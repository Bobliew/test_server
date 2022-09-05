#include "address.h"
#include "log.h"
#include "endian.h"
#include <cerrno>
#include <sstream>
#include <netdb.h>
#include <ifaddrs.h>
#include <stddef.h>
#include <arpa/inet.h>
//先大概处理一下格式IPV4，6

bobliew::Logger::ptr x_logger = BOBLIEW_LOG_ROOT();
namespace bobliew {

template<class T>
static T CreateMask(uint32_t bits) {
    return (1<<(sizeof(T)*8 - bits)) - 1;
}

template<class T>
static uint32_t CountBytes(T value) {
    uint32_t result = 0;
    for(; value; ++result) {
        value &= value - 1;
    }
    return result;
}


Address::ptr Address::LookupAny
(const std::string& host, int family, int type, int protocol) {
    std::vector<Address::ptr> result;
    if(Lookup(result, host, family, type, protocol)) {
        return result[0];
    }
    return nullptr;
}

IPAddress::ptr Address::LookupAnyIPAddress
(const std::string& host, int family, int type, int protocol) {
    std::vector<Address::ptr> result;
    if(Lookup(result, host, family, type, protocol)) {
        for(auto& i : result) {
            IPAddress::ptr v = std::dynamic_pointer_cast<IPAddress>(i);
            if(v) {
                return v;
            }
        }
    }
    return nullptr;
}

bool Address::Lookup
(std::vector<Address::ptr>& result, const std::string& host, int family, 
 int type, int protocol) {
    addrinfo hints, *results, *next;
    hints.ai_flags = 0;
    hints.ai_family = family;
    hints.ai_socktype = type;
    hints.ai_protocol = protocol;
    hints.ai_addrlen = 0;
    hints.ai_canonname = NULL;
    hints.ai_addr = NULL;
    hints.ai_next = NULL;

    std::string node;
    const char* service = NULL;

    //检查ipv6address service
    if(!host.empty() && host[0] == '[') {
        const char* endipv6 = (const char*)memchr(host.c_str() + 1, ']', host.size() - 1);
        if(endipv6) {
            //TODO check out of range
            if(*(endipv6 + 1) == ':') {
                service = endipv6 + 2;
            }
            node = host.substr(1, endipv6 - host.c_str() - 1);
        }
    }
    //检查node service
    if(node.empty()) {
        node = host;
    }
    int error = getaddrinfo(node.c_str(), service, &hints, &results);
    if(error) {
        BOBLIEW_LOG_DEBUG(x_logger) << "Address::Lookup getaddress(" << host <<
            ", "<< family << ", " << type << ") err=" << error << " errstr="
            << gai_strerror(error);
        return false;
    }

    next = results;
    while(next) {
        result.push_back(Create(next->ai_addr, (socklen_t)next->ai_addrlen));
        next = next->ai_next;
    }
    freeaddrinfo(results);
    return !result.empty();
}

bool Address::GetInterfaceAddresses
(std::multimap<std::string, std::pair<Address::ptr, uint32_t>>& result, int family) {
    struct ifaddrs *next, *results;
    if(getifaddrs(&results) != 0) {
        BOBLIEW_LOG_DEBUG(x_logger) << "Address:: GetInterfaceAddresses getifaddrs"
            << " err=" << errno << " errstr=" << strerror(errno);
        return false;
    }  
    try {
        for(next = results; next; next = next->ifa_next) {
            Address::ptr addr;
            uint32_t prefix_len = ~0u;
            if(family != AF_UNSPEC && family != next->ifa_addr->sa_family) {
                continue;
            }
            switch(next->ifa_addr->sa_family) {
                case AF_INET:
                    {
                        addr = Create(next->ifa_addr, sizeof(sockaddr_in));
                        uint32_t netmask = ((sockaddr_in*)next->ifa_netmask)->sin_addr.s_addr;
                        prefix_len = CountBytes(netmask);
                    }
                    break;
                case AF_INET6:
                    {
                        addr = Create(next->ifa_addr, sizeof(sockaddr_in6));
                        in6_addr& netmask = ((sockaddr_in6*)next->ifa_netmask)->sin6_addr;
                        prefix_len = 0;
                        for(int i = 0; i < 16; ++i) {
                            prefix_len += CountBytes(netmask.s6_addr[i]);
                        }
                    }
                    break;
                default:
                    break;
            }

            if(addr) {
                result.insert(std::make_pair(next->ifa_name,
                                             std::make_pair(addr, prefix_len)));
            }
        }
    } catch (...) {
        BOBLIEW_LOG_ERROR(x_logger) << "Address::GetInterfaceAddresses exception";
        freeifaddrs(results);
        return false;
    }
    freeifaddrs(results);
    return !result.empty(); 
}

bool Address::GetInterfaceAddresses(std::vector<std::pair<Address::ptr, uint32_t> >&result
                    ,const std::string& iface, int family) {
    if(iface.empty() || iface == "*") {
        if(family == AF_INET || family == AF_UNSPEC) {
            result.push_back(std::make_pair(Address::ptr(new IPV4Address()), 0u));
        }
        if(family == AF_INET6 || family == AF_UNSPEC) {
            result.push_back(std::make_pair(Address::ptr(new IPV6Address()), 0u));
        }
        return true;
    }

    std::multimap<std::string
          ,std::pair<Address::ptr, uint32_t> > results;

    if(!GetInterfaceAddresses(results, family)) {
        return false;
    }

    auto its = results.equal_range(iface);
    for(; its.first != its.second; ++its.first) {
        result.push_back(its.first->second);
    }
    return !result.empty();
}


int Address::getFamily() const{
    return getAddr()->sa_family;
}



std::string Address::toString() const{
    std::stringstream ss;
    insert(ss);
    return ss.str();
}

Address::ptr Address::Create(const sockaddr* addr, socklen_t addrlen) {
    if(addr == nullptr) {
        return nullptr;
    }

    Address::ptr result;
    switch(addr->sa_family) {
        case AF_INET:
            result.reset(new IPV4Address(*(const sockaddr_in*)addr));
            break;
        case AF_INET6:
            result.reset(new IPV6Address(*(const sockaddr_in6*)addr));
            break;
        default:
            result.reset(new UnknownAddress(*addr));
            break;
    }
    return result;
}

bool Address::operator<(const Address& rhs) const {
    socklen_t minlen = std::min(getAddrLen(), rhs.getAddrLen());
    int result = memcmp(getAddr(), rhs.getAddr(),minlen);
    if(result < 0) {
        return true;
    } else if(result > 0) {
        return false;
    } else if(getAddrLen() < rhs.getAddrLen()) {
        return true;
    }
    return false;
}

bool Address::operator==(const Address& rhs) const{
    return getAddrLen() == rhs.getAddrLen()
    && memcmp(getAddr(), rhs.getAddr(), getAddrLen()) == 0;
}

bool Address::operator!=(const Address& rhs) const {
    return !(*this == rhs);
}

IPAddress::ptr IPAddress::Create(const char* address, uint16_t port) {
    addrinfo hints, *results;
    memset(&hints, 0, sizeof(addrinfo));

    hints.ai_flags = AI_NUMERICHOST;
    hints.ai_family = AF_UNSPEC;

    int error = getaddrinfo(address, NULL, &hints, &results);
    if(error) {
        BOBLIEW_LOG_DEBUG(x_logger) << "IPAddress::Create(" << address
            << ", " << port << ") error=" << error
            << " errno=" << errno << " errstr=" << strerror(errno);
        return nullptr;
    }

    try {
        IPAddress::ptr result = std::dynamic_pointer_cast<IPAddress>(
                Address::Create(results->ai_addr, (socklen_t)results->ai_addrlen));
        if(result) {
            result->setPPort(port);
        }
        freeaddrinfo(results);
        return result;
    } catch (...) {
        freeaddrinfo(results);
        return nullptr;
    }
}


//IPV4Address
IPV4Address::ptr IPV4Address::Create(const char* address, uint16_t port) {
    IPV4Address::ptr rt(new IPV4Address);
    rt->m_addr.sin_port = byteswapOnLittleEndian(port);
    int result = inet_pton(AF_INET, address, &rt->m_addr.sin_addr);
    if(result <= 0) {
        BOBLIEW_LOG_DEBUG(x_logger) << "IPV4Address::Create("<< address<< ", "
            << port << ") rt = " << result << " errno=" << errno;
        return nullptr;
    }
    return rt;
}

IPV4Address::IPV4Address(const sockaddr_in& address) {
    m_addr = address;
}

IPV4Address::IPV4Address(uint32_t address, uint16_t port) {
    memset(&m_addr, 0, sizeof(m_addr));
    m_addr.sin_family = AF_INET;
    m_addr.sin_port = byteswapOnLittleEndian(port);
    m_addr.sin_addr.s_addr = byteswapOnLittleEndian(address);
}

const sockaddr* IPV4Address::getAddr() const {
    return(sockaddr*)&m_addr;
}

sockaddr* IPV4Address::getAddr() {
    return(sockaddr*)&m_addr;
}

socklen_t IPV4Address::getAddrLen() const {
    return sizeof(m_addr);
}

//将IPV4的网络地址转化为可视化的地址
std::ostream& IPV4Address::insert(std::ostream& os)const {
    uint32_t addr = byteswapOnLittleEndian(m_addr.sin_addr.s_addr);
    os << ((addr >> 24) & 0xff) << "."
        << ((addr >> 16) & 0xff) << "."
        << ((addr >> 8) & 0xff) << "."
        <<(addr & 0xff);
    os <<  ":" << byteswapOnLittleEndian(m_addr.sin_port);
    return os;
}

//返回广播地址
IPAddress::ptr IPV4Address::broadcastAddress(uint32_t prefix_len) {
    if(prefix_len > 32) {
        return nullptr;
    }
    sockaddr_in baddr(m_addr);
    baddr.sin_addr.s_addr |= byteswapOnLittleEndian(
            CreateMask<uint32_t>(prefix_len));
    return IPV4Address::ptr(new IPV4Address(baddr));
}

//
IPAddress::ptr IPV4Address::networkAddress(uint32_t prefix_len) {
    if(prefix_len > 32) {
        return nullptr;
    }
    sockaddr_in baddr(m_addr);
    baddr.sin_addr.s_addr |= byteswapOnLittleEndian(
            CreateMask<uint32_t>(prefix_len));
    return IPV4Address::ptr(new IPV4Address(baddr));
}

IPAddress::ptr IPV4Address::subnetMask(uint32_t prefix_len) {
    sockaddr_in subnet;
    memset(&subnet, 0, sizeof(subnet));
    subnet.sin_family = AF_INET;
    subnet.sin_addr.s_addr = ~byteswapOnLittleEndian(CreateMask<uint32_t>(prefix_len));
    return IPV4Address::ptr(new IPV4Address(subnet));
}

uint32_t IPV4Address::getPort() const {
    return byteswapOnLittleEndian(m_addr.sin_port);
}

void IPV4Address::setPPort(uint32_t v) {
    m_addr.sin_port = byteswapOnLittleEndian(v);
}


//IPV6
//
IPV6Address::ptr IPV6Address::Create(const char* address, uint16_t port) {
    IPV6Address::ptr rt(new IPV6Address);
    rt->m_addr.sin6_port = byteswapOnLittleEndian(port);
    int result = inet_pton(AF_INET6, address, &rt->m_addr.sin6_addr);
    if(result <= 0) {
        BOBLIEW_LOG_DEBUG(x_logger) << "IPV6Address::Create(" << address << ", "
            << port << ") rt=" << result << " errno=" << errno
            << " errno=" << strerror(errno);
        return nullptr;
    }
    return rt;
}



IPV6Address::IPV6Address() {
    memset(&m_addr, 0, sizeof(m_addr));
    m_addr.sin6_family = AF_INET6;
}

IPV6Address::IPV6Address(const sockaddr_in6& address) {
    m_addr = address;
}

IPV6Address::IPV6Address(const uint8_t address[16], uint16_t port) {
    memset(&m_addr, 0, sizeof(m_addr));
    m_addr.sin6_family = AF_INET6;
    m_addr.sin6_port = byteswapOnLittleEndian(port);
    memcpy(&m_addr.sin6_addr.s6_addr, address, 16);
}

const sockaddr* IPV6Address::getAddr() const {
    return (sockaddr*)&m_addr;
}

sockaddr* IPV6Address::getAddr() {
    return (sockaddr*)&m_addr;
}

socklen_t IPV6Address::getAddrLen() const {
    return sizeof(m_addr);
}

std::ostream& IPV6Address::insert(std::ostream& os)const {
    os<<"[";
    uint16_t* addr = (uint16_t*)m_addr.sin6_addr.s6_addr;
    bool used_zeros = false;
    for(size_t i = 0; i < 8; ++i) {
        if(addr[i] == 0 && !used_zeros) {
            continue;
        }
        //连续的0用::替代
        if(i && addr[i-1]==0 && !used_zeros) {
            os << ":";
            used_zeros = true;
        }
        if(i) {
            os << ":";
        }
        os<<std::hex<<(int)byteswapOnLittleEndian(addr[i]) << std::dec;
    }
    //空地址
    if(!used_zeros && addr[7] == 0) {
        os << "::";
    }
    //需要输出十六进制
    os << "]:"<< byteswapOnLittleEndian(m_addr.sin6_port);
    return os;
}

IPAddress::ptr IPV6Address::broadcastAddress(uint32_t prefix_len) {
    sockaddr_in6 baddr(m_addr);
    baddr.sin6_addr.s6_addr[prefix_len/8] |=
        CreateMask<uint8_t>(prefix_len % 8);
    for(int i = prefix_len / 8 + 1; i < 16; ++i) {
        baddr.sin6_addr.s6_addr[i] = 0xff;
    }
    return IPV6Address::ptr(new IPV6Address(baddr));
}

IPAddress::ptr IPV6Address::networkAddress(uint32_t prefix_len) {
    sockaddr_in6 baddr(m_addr);
    baddr.sin6_addr.s6_addr[prefix_len/8] &= 
        CreateMask<uint8_t>(prefix_len % 8);
    for(int i = prefix_len / 8 + 1; i <16; ++i) {
        baddr.sin6_addr.s6_addr[i] = 0x00;
    }
    return IPV6Address::ptr(new IPV6Address(baddr));
}

//子网掩码
IPAddress::ptr IPV6Address::subnetMask(uint32_t prefix_len) {
    sockaddr_in6 subnet;
    memset(&subnet, 0, sizeof(subnet));
    subnet.sin6_family = AF_INET6;
    subnet.sin6_addr.s6_addr[prefix_len/8] = 
        -CreateMask<uint8_t>(prefix_len % 8);
    for(uint32_t i = 0; i < prefix_len/8; ++i) {
        subnet.sin6_addr.s6_addr[i] = 0xff;
    }
    return IPV6Address::ptr(new IPV6Address(subnet));
}

uint32_t IPV6Address::getPort() const {
    return byteswapOnLittleEndian(m_addr.sin6_port);
}

void IPV6Address::setPPort(uint32_t v) {
    m_addr.sin6_port = byteswapOnLittleEndian(v);
}

//UNIX
//因为需要偏移1.
static const size_t MAX_PATH_LEN = sizeof(((sockaddr_un*)0)->sun_path) -1;

UnixAddress::UnixAddress() {
    memset(&m_addr, 0, sizeof(m_addr));
    m_addr.sun_family = AF_UNIX;
    //如果没有要初始化的文件，直接加最长的。
    m_length = offsetof(sockaddr_un, sun_path) + MAX_PATH_LEN;
}


// [len(uint8_t) fmaily(sa_family_t)]  [socket address_data(char)]
//      2bytes                                 variable size
//  规范的地址长度  地址簇           此字段包含文件系统中条目的路径名
UnixAddress::UnixAddress(const std::string& path){
    memset(&m_addr, 0, sizeof(m_addr));
    m_addr.sun_family = AF_UNIX;
    m_length = path.size() +1;
    //如果不存在，说明后面没有任何文件
    //第一个就是\0,说明没有任何path
    if(!path.empty() && path[0]=='\0') {
        --m_length;
    }
    if(m_length > sizeof(m_addr.sun_path)) {
        //如果m_length比可容纳的最大空间还大，那就抛出一个错误。
        throw std::logic_error("path too long");
    }
    //赋值内存块，(destination <- source size)
    memcpy(m_addr.sun_path, path.c_str(), m_length);
    //更新长度
    m_length += offsetof(sockaddr_un, sun_path);
}

void UnixAddress::setAddrLen(uint32_t v) {
    m_length = v;
}

sockaddr* UnixAddress::getAddr() {
    return (sockaddr*)&m_addr;
}

const sockaddr* UnixAddress::getAddr() const {
    return (sockaddr*)&m_addr;
}

socklen_t UnixAddress::getAddrLen() const {
    return m_length;
}

std::string UnixAddress::getPath() const {
    std::stringstream ss;
    if(m_length > offsetof(sockaddr_un, sun_path)
        && m_addr.sun_path[0]=='\0') {
        ss << "\\0" << std::string(m_addr.sun_path + 1,
                                   m_length - offsetof(sockaddr_un, sun_path)-1);
    } else {
        ss << m_addr.sun_path;
    }
    return ss.str();
}

std::ostream& UnixAddress::insert(std::ostream& os)const {
    if(m_length > offsetof(sockaddr_un, sun_path)
        && m_addr.sun_path[0] == '\0') {
        return os << "\\0" << std::string(m_addr.sun_path + 1,
                                          m_length - offsetof(sockaddr_un, sun_path)-1);
    }
    return os << m_addr.sun_path;
}


//Unknown

UnknownAddress::UnknownAddress(int family) {
    memset(&m_addr, 0, sizeof(m_addr));
    m_addr.sa_family = family;
}

UnknownAddress::UnknownAddress(const sockaddr& addr){
    m_addr = addr;
}
const sockaddr* UnknownAddress::getAddr() const {
    return (sockaddr*)&m_addr;
}

sockaddr* UnknownAddress::getAddr() {
    return (sockaddr*)&m_addr;
}

socklen_t UnknownAddress::getAddrLen() const {
    return sizeof(m_addr);
}
std::ostream& UnknownAddress::insert(std::ostream& os)const {
    os<< "[UnknownAddress family="<< m_addr.sa_family<<"]";
    return os;
}

std::ostream& operator<<(std::ostream& os, const Address& addr) {
    return addr.insert(os);
}

//后续提升：域名，网卡

}
