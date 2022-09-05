# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bobliew/data/bobliew

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bobliew/data/bobliew

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/bobliew/data/bobliew/CMakeFiles /home/bobliew/data/bobliew/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/bobliew/data/bobliew/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named test

# Build rule for target.
test: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test
.PHONY : test

# fast build rule for target.
test/fast:
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/build
.PHONY : test/fast

#=============================================================================
# Target rules for targets named test_thread

# Build rule for target.
test_thread: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_thread
.PHONY : test_thread

# fast build rule for target.
test_thread/fast:
	$(MAKE) -f CMakeFiles/test_thread.dir/build.make CMakeFiles/test_thread.dir/build
.PHONY : test_thread/fast

#=============================================================================
# Target rules for targets named test_config

# Build rule for target.
test_config: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_config
.PHONY : test_config

# fast build rule for target.
test_config/fast:
	$(MAKE) -f CMakeFiles/test_config.dir/build.make CMakeFiles/test_config.dir/build
.PHONY : test_config/fast

#=============================================================================
# Target rules for targets named test_bytearray

# Build rule for target.
test_bytearray: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_bytearray
.PHONY : test_bytearray

# fast build rule for target.
test_bytearray/fast:
	$(MAKE) -f CMakeFiles/test_bytearray.dir/build.make CMakeFiles/test_bytearray.dir/build
.PHONY : test_bytearray/fast

#=============================================================================
# Target rules for targets named test_configs

# Build rule for target.
test_configs: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_configs
.PHONY : test_configs

# fast build rule for target.
test_configs/fast:
	$(MAKE) -f CMakeFiles/test_configs.dir/build.make CMakeFiles/test_configs.dir/build
.PHONY : test_configs/fast

#=============================================================================
# Target rules for targets named test_fiber

# Build rule for target.
test_fiber: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_fiber
.PHONY : test_fiber

# fast build rule for target.
test_fiber/fast:
	$(MAKE) -f CMakeFiles/test_fiber.dir/build.make CMakeFiles/test_fiber.dir/build
.PHONY : test_fiber/fast

#=============================================================================
# Target rules for targets named test_address

# Build rule for target.
test_address: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_address
.PHONY : test_address

# fast build rule for target.
test_address/fast:
	$(MAKE) -f CMakeFiles/test_address.dir/build.make CMakeFiles/test_address.dir/build
.PHONY : test_address/fast

#=============================================================================
# Target rules for targets named test_util

# Build rule for target.
test_util: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_util
.PHONY : test_util

# fast build rule for target.
test_util/fast:
	$(MAKE) -f CMakeFiles/test_util.dir/build.make CMakeFiles/test_util.dir/build
.PHONY : test_util/fast

#=============================================================================
# Target rules for targets named test_scheduler

# Build rule for target.
test_scheduler: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_scheduler
.PHONY : test_scheduler

# fast build rule for target.
test_scheduler/fast:
	$(MAKE) -f CMakeFiles/test_scheduler.dir/build.make CMakeFiles/test_scheduler.dir/build
.PHONY : test_scheduler/fast

#=============================================================================
# Target rules for targets named test_iomanager

# Build rule for target.
test_iomanager: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_iomanager
.PHONY : test_iomanager

# fast build rule for target.
test_iomanager/fast:
	$(MAKE) -f CMakeFiles/test_iomanager.dir/build.make CMakeFiles/test_iomanager.dir/build
.PHONY : test_iomanager/fast

#=============================================================================
# Target rules for targets named bobliew

# Build rule for target.
bobliew: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 bobliew
.PHONY : bobliew

# fast build rule for target.
bobliew/fast:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/build
.PHONY : bobliew/fast

#=============================================================================
# Target rules for targets named test_hook

# Build rule for target.
test_hook: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_hook
.PHONY : test_hook

# fast build rule for target.
test_hook/fast:
	$(MAKE) -f CMakeFiles/test_hook.dir/build.make CMakeFiles/test_hook.dir/build
.PHONY : test_hook/fast

#=============================================================================
# Target rules for targets named test_http

# Build rule for target.
test_http: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_http
.PHONY : test_http

# fast build rule for target.
test_http/fast:
	$(MAKE) -f CMakeFiles/test_http.dir/build.make CMakeFiles/test_http.dir/build
.PHONY : test_http/fast

bobliew/address.o: bobliew/address.cc.o

.PHONY : bobliew/address.o

# target to build an object file
bobliew/address.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/address.cc.o
.PHONY : bobliew/address.cc.o

bobliew/address.i: bobliew/address.cc.i

.PHONY : bobliew/address.i

# target to preprocess a source file
bobliew/address.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/address.cc.i
.PHONY : bobliew/address.cc.i

bobliew/address.s: bobliew/address.cc.s

.PHONY : bobliew/address.s

# target to generate assembly for a file
bobliew/address.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/address.cc.s
.PHONY : bobliew/address.cc.s

bobliew/bytearray.o: bobliew/bytearray.cc.o

.PHONY : bobliew/bytearray.o

# target to build an object file
bobliew/bytearray.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/bytearray.cc.o
.PHONY : bobliew/bytearray.cc.o

bobliew/bytearray.i: bobliew/bytearray.cc.i

.PHONY : bobliew/bytearray.i

# target to preprocess a source file
bobliew/bytearray.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/bytearray.cc.i
.PHONY : bobliew/bytearray.cc.i

bobliew/bytearray.s: bobliew/bytearray.cc.s

.PHONY : bobliew/bytearray.s

# target to generate assembly for a file
bobliew/bytearray.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/bytearray.cc.s
.PHONY : bobliew/bytearray.cc.s

bobliew/config.o: bobliew/config.cc.o

.PHONY : bobliew/config.o

# target to build an object file
bobliew/config.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/config.cc.o
.PHONY : bobliew/config.cc.o

bobliew/config.i: bobliew/config.cc.i

.PHONY : bobliew/config.i

# target to preprocess a source file
bobliew/config.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/config.cc.i
.PHONY : bobliew/config.cc.i

bobliew/config.s: bobliew/config.cc.s

.PHONY : bobliew/config.s

# target to generate assembly for a file
bobliew/config.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/config.cc.s
.PHONY : bobliew/config.cc.s

bobliew/fd_manager.o: bobliew/fd_manager.cc.o

.PHONY : bobliew/fd_manager.o

# target to build an object file
bobliew/fd_manager.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/fd_manager.cc.o
.PHONY : bobliew/fd_manager.cc.o

bobliew/fd_manager.i: bobliew/fd_manager.cc.i

.PHONY : bobliew/fd_manager.i

# target to preprocess a source file
bobliew/fd_manager.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/fd_manager.cc.i
.PHONY : bobliew/fd_manager.cc.i

bobliew/fd_manager.s: bobliew/fd_manager.cc.s

.PHONY : bobliew/fd_manager.s

# target to generate assembly for a file
bobliew/fd_manager.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/fd_manager.cc.s
.PHONY : bobliew/fd_manager.cc.s

bobliew/fiber.o: bobliew/fiber.cc.o

.PHONY : bobliew/fiber.o

# target to build an object file
bobliew/fiber.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/fiber.cc.o
.PHONY : bobliew/fiber.cc.o

bobliew/fiber.i: bobliew/fiber.cc.i

.PHONY : bobliew/fiber.i

# target to preprocess a source file
bobliew/fiber.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/fiber.cc.i
.PHONY : bobliew/fiber.cc.i

bobliew/fiber.s: bobliew/fiber.cc.s

.PHONY : bobliew/fiber.s

# target to generate assembly for a file
bobliew/fiber.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/fiber.cc.s
.PHONY : bobliew/fiber.cc.s

bobliew/hook.o: bobliew/hook.cc.o

.PHONY : bobliew/hook.o

# target to build an object file
bobliew/hook.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/hook.cc.o
.PHONY : bobliew/hook.cc.o

bobliew/hook.i: bobliew/hook.cc.i

.PHONY : bobliew/hook.i

# target to preprocess a source file
bobliew/hook.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/hook.cc.i
.PHONY : bobliew/hook.cc.i

bobliew/hook.s: bobliew/hook.cc.s

.PHONY : bobliew/hook.s

# target to generate assembly for a file
bobliew/hook.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/hook.cc.s
.PHONY : bobliew/hook.cc.s

bobliew/http/http.o: bobliew/http/http.cc.o

.PHONY : bobliew/http/http.o

# target to build an object file
bobliew/http/http.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/http/http.cc.o
.PHONY : bobliew/http/http.cc.o

bobliew/http/http.i: bobliew/http/http.cc.i

.PHONY : bobliew/http/http.i

# target to preprocess a source file
bobliew/http/http.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/http/http.cc.i
.PHONY : bobliew/http/http.cc.i

bobliew/http/http.s: bobliew/http/http.cc.s

.PHONY : bobliew/http/http.s

# target to generate assembly for a file
bobliew/http/http.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/http/http.cc.s
.PHONY : bobliew/http/http.cc.s

bobliew/http/http11_parser.o: bobliew/http/http11_parser.cc.o

.PHONY : bobliew/http/http11_parser.o

# target to build an object file
bobliew/http/http11_parser.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/http/http11_parser.cc.o
.PHONY : bobliew/http/http11_parser.cc.o

bobliew/http/http11_parser.i: bobliew/http/http11_parser.cc.i

.PHONY : bobliew/http/http11_parser.i

# target to preprocess a source file
bobliew/http/http11_parser.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/http/http11_parser.cc.i
.PHONY : bobliew/http/http11_parser.cc.i

bobliew/http/http11_parser.s: bobliew/http/http11_parser.cc.s

.PHONY : bobliew/http/http11_parser.s

# target to generate assembly for a file
bobliew/http/http11_parser.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/http/http11_parser.cc.s
.PHONY : bobliew/http/http11_parser.cc.s

bobliew/http/http_parser.o: bobliew/http/http_parser.cc.o

.PHONY : bobliew/http/http_parser.o

# target to build an object file
bobliew/http/http_parser.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/http/http_parser.cc.o
.PHONY : bobliew/http/http_parser.cc.o

bobliew/http/http_parser.i: bobliew/http/http_parser.cc.i

.PHONY : bobliew/http/http_parser.i

# target to preprocess a source file
bobliew/http/http_parser.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/http/http_parser.cc.i
.PHONY : bobliew/http/http_parser.cc.i

bobliew/http/http_parser.s: bobliew/http/http_parser.cc.s

.PHONY : bobliew/http/http_parser.s

# target to generate assembly for a file
bobliew/http/http_parser.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/http/http_parser.cc.s
.PHONY : bobliew/http/http_parser.cc.s

bobliew/http/httpclient_parser.o: bobliew/http/httpclient_parser.cc.o

.PHONY : bobliew/http/httpclient_parser.o

# target to build an object file
bobliew/http/httpclient_parser.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/http/httpclient_parser.cc.o
.PHONY : bobliew/http/httpclient_parser.cc.o

bobliew/http/httpclient_parser.i: bobliew/http/httpclient_parser.cc.i

.PHONY : bobliew/http/httpclient_parser.i

# target to preprocess a source file
bobliew/http/httpclient_parser.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/http/httpclient_parser.cc.i
.PHONY : bobliew/http/httpclient_parser.cc.i

bobliew/http/httpclient_parser.s: bobliew/http/httpclient_parser.cc.s

.PHONY : bobliew/http/httpclient_parser.s

# target to generate assembly for a file
bobliew/http/httpclient_parser.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/http/httpclient_parser.cc.s
.PHONY : bobliew/http/httpclient_parser.cc.s

bobliew/iomanager.o: bobliew/iomanager.cc.o

.PHONY : bobliew/iomanager.o

# target to build an object file
bobliew/iomanager.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/iomanager.cc.o
.PHONY : bobliew/iomanager.cc.o

bobliew/iomanager.i: bobliew/iomanager.cc.i

.PHONY : bobliew/iomanager.i

# target to preprocess a source file
bobliew/iomanager.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/iomanager.cc.i
.PHONY : bobliew/iomanager.cc.i

bobliew/iomanager.s: bobliew/iomanager.cc.s

.PHONY : bobliew/iomanager.s

# target to generate assembly for a file
bobliew/iomanager.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/iomanager.cc.s
.PHONY : bobliew/iomanager.cc.s

bobliew/log.o: bobliew/log.cc.o

.PHONY : bobliew/log.o

# target to build an object file
bobliew/log.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/log.cc.o
.PHONY : bobliew/log.cc.o

bobliew/log.i: bobliew/log.cc.i

.PHONY : bobliew/log.i

# target to preprocess a source file
bobliew/log.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/log.cc.i
.PHONY : bobliew/log.cc.i

bobliew/log.s: bobliew/log.cc.s

.PHONY : bobliew/log.s

# target to generate assembly for a file
bobliew/log.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/log.cc.s
.PHONY : bobliew/log.cc.s

bobliew/scheduler.o: bobliew/scheduler.cc.o

.PHONY : bobliew/scheduler.o

# target to build an object file
bobliew/scheduler.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/scheduler.cc.o
.PHONY : bobliew/scheduler.cc.o

bobliew/scheduler.i: bobliew/scheduler.cc.i

.PHONY : bobliew/scheduler.i

# target to preprocess a source file
bobliew/scheduler.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/scheduler.cc.i
.PHONY : bobliew/scheduler.cc.i

bobliew/scheduler.s: bobliew/scheduler.cc.s

.PHONY : bobliew/scheduler.s

# target to generate assembly for a file
bobliew/scheduler.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/scheduler.cc.s
.PHONY : bobliew/scheduler.cc.s

bobliew/thread.o: bobliew/thread.cc.o

.PHONY : bobliew/thread.o

# target to build an object file
bobliew/thread.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/thread.cc.o
.PHONY : bobliew/thread.cc.o

bobliew/thread.i: bobliew/thread.cc.i

.PHONY : bobliew/thread.i

# target to preprocess a source file
bobliew/thread.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/thread.cc.i
.PHONY : bobliew/thread.cc.i

bobliew/thread.s: bobliew/thread.cc.s

.PHONY : bobliew/thread.s

# target to generate assembly for a file
bobliew/thread.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/thread.cc.s
.PHONY : bobliew/thread.cc.s

bobliew/timer.o: bobliew/timer.cc.o

.PHONY : bobliew/timer.o

# target to build an object file
bobliew/timer.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/timer.cc.o
.PHONY : bobliew/timer.cc.o

bobliew/timer.i: bobliew/timer.cc.i

.PHONY : bobliew/timer.i

# target to preprocess a source file
bobliew/timer.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/timer.cc.i
.PHONY : bobliew/timer.cc.i

bobliew/timer.s: bobliew/timer.cc.s

.PHONY : bobliew/timer.s

# target to generate assembly for a file
bobliew/timer.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/timer.cc.s
.PHONY : bobliew/timer.cc.s

bobliew/util.o: bobliew/util.cc.o

.PHONY : bobliew/util.o

# target to build an object file
bobliew/util.cc.o:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/util.cc.o
.PHONY : bobliew/util.cc.o

bobliew/util.i: bobliew/util.cc.i

.PHONY : bobliew/util.i

# target to preprocess a source file
bobliew/util.cc.i:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/util.cc.i
.PHONY : bobliew/util.cc.i

bobliew/util.s: bobliew/util.cc.s

.PHONY : bobliew/util.s

# target to generate assembly for a file
bobliew/util.cc.s:
	$(MAKE) -f CMakeFiles/bobliew.dir/build.make CMakeFiles/bobliew.dir/bobliew/util.cc.s
.PHONY : bobliew/util.cc.s

tests/test.o: tests/test.cc.o

.PHONY : tests/test.o

# target to build an object file
tests/test.cc.o:
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test.cc.o
.PHONY : tests/test.cc.o

tests/test.i: tests/test.cc.i

.PHONY : tests/test.i

# target to preprocess a source file
tests/test.cc.i:
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test.cc.i
.PHONY : tests/test.cc.i

tests/test.s: tests/test.cc.s

.PHONY : tests/test.s

# target to generate assembly for a file
tests/test.cc.s:
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test.cc.s
.PHONY : tests/test.cc.s

tests/test_address.o: tests/test_address.cc.o

.PHONY : tests/test_address.o

# target to build an object file
tests/test_address.cc.o:
	$(MAKE) -f CMakeFiles/test_address.dir/build.make CMakeFiles/test_address.dir/tests/test_address.cc.o
.PHONY : tests/test_address.cc.o

tests/test_address.i: tests/test_address.cc.i

.PHONY : tests/test_address.i

# target to preprocess a source file
tests/test_address.cc.i:
	$(MAKE) -f CMakeFiles/test_address.dir/build.make CMakeFiles/test_address.dir/tests/test_address.cc.i
.PHONY : tests/test_address.cc.i

tests/test_address.s: tests/test_address.cc.s

.PHONY : tests/test_address.s

# target to generate assembly for a file
tests/test_address.cc.s:
	$(MAKE) -f CMakeFiles/test_address.dir/build.make CMakeFiles/test_address.dir/tests/test_address.cc.s
.PHONY : tests/test_address.cc.s

tests/test_bytearray.o: tests/test_bytearray.cc.o

.PHONY : tests/test_bytearray.o

# target to build an object file
tests/test_bytearray.cc.o:
	$(MAKE) -f CMakeFiles/test_bytearray.dir/build.make CMakeFiles/test_bytearray.dir/tests/test_bytearray.cc.o
.PHONY : tests/test_bytearray.cc.o

tests/test_bytearray.i: tests/test_bytearray.cc.i

.PHONY : tests/test_bytearray.i

# target to preprocess a source file
tests/test_bytearray.cc.i:
	$(MAKE) -f CMakeFiles/test_bytearray.dir/build.make CMakeFiles/test_bytearray.dir/tests/test_bytearray.cc.i
.PHONY : tests/test_bytearray.cc.i

tests/test_bytearray.s: tests/test_bytearray.cc.s

.PHONY : tests/test_bytearray.s

# target to generate assembly for a file
tests/test_bytearray.cc.s:
	$(MAKE) -f CMakeFiles/test_bytearray.dir/build.make CMakeFiles/test_bytearray.dir/tests/test_bytearray.cc.s
.PHONY : tests/test_bytearray.cc.s

tests/test_config.o: tests/test_config.cc.o

.PHONY : tests/test_config.o

# target to build an object file
tests/test_config.cc.o:
	$(MAKE) -f CMakeFiles/test_config.dir/build.make CMakeFiles/test_config.dir/tests/test_config.cc.o
.PHONY : tests/test_config.cc.o

tests/test_config.i: tests/test_config.cc.i

.PHONY : tests/test_config.i

# target to preprocess a source file
tests/test_config.cc.i:
	$(MAKE) -f CMakeFiles/test_config.dir/build.make CMakeFiles/test_config.dir/tests/test_config.cc.i
.PHONY : tests/test_config.cc.i

tests/test_config.s: tests/test_config.cc.s

.PHONY : tests/test_config.s

# target to generate assembly for a file
tests/test_config.cc.s:
	$(MAKE) -f CMakeFiles/test_config.dir/build.make CMakeFiles/test_config.dir/tests/test_config.cc.s
.PHONY : tests/test_config.cc.s

tests/test_configs.o: tests/test_configs.cc.o

.PHONY : tests/test_configs.o

# target to build an object file
tests/test_configs.cc.o:
	$(MAKE) -f CMakeFiles/test_configs.dir/build.make CMakeFiles/test_configs.dir/tests/test_configs.cc.o
.PHONY : tests/test_configs.cc.o

tests/test_configs.i: tests/test_configs.cc.i

.PHONY : tests/test_configs.i

# target to preprocess a source file
tests/test_configs.cc.i:
	$(MAKE) -f CMakeFiles/test_configs.dir/build.make CMakeFiles/test_configs.dir/tests/test_configs.cc.i
.PHONY : tests/test_configs.cc.i

tests/test_configs.s: tests/test_configs.cc.s

.PHONY : tests/test_configs.s

# target to generate assembly for a file
tests/test_configs.cc.s:
	$(MAKE) -f CMakeFiles/test_configs.dir/build.make CMakeFiles/test_configs.dir/tests/test_configs.cc.s
.PHONY : tests/test_configs.cc.s

tests/test_fiber.o: tests/test_fiber.cc.o

.PHONY : tests/test_fiber.o

# target to build an object file
tests/test_fiber.cc.o:
	$(MAKE) -f CMakeFiles/test_fiber.dir/build.make CMakeFiles/test_fiber.dir/tests/test_fiber.cc.o
.PHONY : tests/test_fiber.cc.o

tests/test_fiber.i: tests/test_fiber.cc.i

.PHONY : tests/test_fiber.i

# target to preprocess a source file
tests/test_fiber.cc.i:
	$(MAKE) -f CMakeFiles/test_fiber.dir/build.make CMakeFiles/test_fiber.dir/tests/test_fiber.cc.i
.PHONY : tests/test_fiber.cc.i

tests/test_fiber.s: tests/test_fiber.cc.s

.PHONY : tests/test_fiber.s

# target to generate assembly for a file
tests/test_fiber.cc.s:
	$(MAKE) -f CMakeFiles/test_fiber.dir/build.make CMakeFiles/test_fiber.dir/tests/test_fiber.cc.s
.PHONY : tests/test_fiber.cc.s

tests/test_hook.o: tests/test_hook.cc.o

.PHONY : tests/test_hook.o

# target to build an object file
tests/test_hook.cc.o:
	$(MAKE) -f CMakeFiles/test_hook.dir/build.make CMakeFiles/test_hook.dir/tests/test_hook.cc.o
.PHONY : tests/test_hook.cc.o

tests/test_hook.i: tests/test_hook.cc.i

.PHONY : tests/test_hook.i

# target to preprocess a source file
tests/test_hook.cc.i:
	$(MAKE) -f CMakeFiles/test_hook.dir/build.make CMakeFiles/test_hook.dir/tests/test_hook.cc.i
.PHONY : tests/test_hook.cc.i

tests/test_hook.s: tests/test_hook.cc.s

.PHONY : tests/test_hook.s

# target to generate assembly for a file
tests/test_hook.cc.s:
	$(MAKE) -f CMakeFiles/test_hook.dir/build.make CMakeFiles/test_hook.dir/tests/test_hook.cc.s
.PHONY : tests/test_hook.cc.s

tests/test_http.o: tests/test_http.cc.o

.PHONY : tests/test_http.o

# target to build an object file
tests/test_http.cc.o:
	$(MAKE) -f CMakeFiles/test_http.dir/build.make CMakeFiles/test_http.dir/tests/test_http.cc.o
.PHONY : tests/test_http.cc.o

tests/test_http.i: tests/test_http.cc.i

.PHONY : tests/test_http.i

# target to preprocess a source file
tests/test_http.cc.i:
	$(MAKE) -f CMakeFiles/test_http.dir/build.make CMakeFiles/test_http.dir/tests/test_http.cc.i
.PHONY : tests/test_http.cc.i

tests/test_http.s: tests/test_http.cc.s

.PHONY : tests/test_http.s

# target to generate assembly for a file
tests/test_http.cc.s:
	$(MAKE) -f CMakeFiles/test_http.dir/build.make CMakeFiles/test_http.dir/tests/test_http.cc.s
.PHONY : tests/test_http.cc.s

tests/test_iomanager.o: tests/test_iomanager.cc.o

.PHONY : tests/test_iomanager.o

# target to build an object file
tests/test_iomanager.cc.o:
	$(MAKE) -f CMakeFiles/test_iomanager.dir/build.make CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.o
.PHONY : tests/test_iomanager.cc.o

tests/test_iomanager.i: tests/test_iomanager.cc.i

.PHONY : tests/test_iomanager.i

# target to preprocess a source file
tests/test_iomanager.cc.i:
	$(MAKE) -f CMakeFiles/test_iomanager.dir/build.make CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.i
.PHONY : tests/test_iomanager.cc.i

tests/test_iomanager.s: tests/test_iomanager.cc.s

.PHONY : tests/test_iomanager.s

# target to generate assembly for a file
tests/test_iomanager.cc.s:
	$(MAKE) -f CMakeFiles/test_iomanager.dir/build.make CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.s
.PHONY : tests/test_iomanager.cc.s

tests/test_scheduler.o: tests/test_scheduler.cc.o

.PHONY : tests/test_scheduler.o

# target to build an object file
tests/test_scheduler.cc.o:
	$(MAKE) -f CMakeFiles/test_scheduler.dir/build.make CMakeFiles/test_scheduler.dir/tests/test_scheduler.cc.o
.PHONY : tests/test_scheduler.cc.o

tests/test_scheduler.i: tests/test_scheduler.cc.i

.PHONY : tests/test_scheduler.i

# target to preprocess a source file
tests/test_scheduler.cc.i:
	$(MAKE) -f CMakeFiles/test_scheduler.dir/build.make CMakeFiles/test_scheduler.dir/tests/test_scheduler.cc.i
.PHONY : tests/test_scheduler.cc.i

tests/test_scheduler.s: tests/test_scheduler.cc.s

.PHONY : tests/test_scheduler.s

# target to generate assembly for a file
tests/test_scheduler.cc.s:
	$(MAKE) -f CMakeFiles/test_scheduler.dir/build.make CMakeFiles/test_scheduler.dir/tests/test_scheduler.cc.s
.PHONY : tests/test_scheduler.cc.s

tests/test_thread.o: tests/test_thread.cc.o

.PHONY : tests/test_thread.o

# target to build an object file
tests/test_thread.cc.o:
	$(MAKE) -f CMakeFiles/test_thread.dir/build.make CMakeFiles/test_thread.dir/tests/test_thread.cc.o
.PHONY : tests/test_thread.cc.o

tests/test_thread.i: tests/test_thread.cc.i

.PHONY : tests/test_thread.i

# target to preprocess a source file
tests/test_thread.cc.i:
	$(MAKE) -f CMakeFiles/test_thread.dir/build.make CMakeFiles/test_thread.dir/tests/test_thread.cc.i
.PHONY : tests/test_thread.cc.i

tests/test_thread.s: tests/test_thread.cc.s

.PHONY : tests/test_thread.s

# target to generate assembly for a file
tests/test_thread.cc.s:
	$(MAKE) -f CMakeFiles/test_thread.dir/build.make CMakeFiles/test_thread.dir/tests/test_thread.cc.s
.PHONY : tests/test_thread.cc.s

tests/test_util.o: tests/test_util.cc.o

.PHONY : tests/test_util.o

# target to build an object file
tests/test_util.cc.o:
	$(MAKE) -f CMakeFiles/test_util.dir/build.make CMakeFiles/test_util.dir/tests/test_util.cc.o
.PHONY : tests/test_util.cc.o

tests/test_util.i: tests/test_util.cc.i

.PHONY : tests/test_util.i

# target to preprocess a source file
tests/test_util.cc.i:
	$(MAKE) -f CMakeFiles/test_util.dir/build.make CMakeFiles/test_util.dir/tests/test_util.cc.i
.PHONY : tests/test_util.cc.i

tests/test_util.s: tests/test_util.cc.s

.PHONY : tests/test_util.s

# target to generate assembly for a file
tests/test_util.cc.s:
	$(MAKE) -f CMakeFiles/test_util.dir/build.make CMakeFiles/test_util.dir/tests/test_util.cc.s
.PHONY : tests/test_util.cc.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... test"
	@echo "... test_thread"
	@echo "... test_config"
	@echo "... test_bytearray"
	@echo "... test_configs"
	@echo "... test_fiber"
	@echo "... test_address"
	@echo "... test_util"
	@echo "... test_scheduler"
	@echo "... test_iomanager"
	@echo "... bobliew"
	@echo "... test_hook"
	@echo "... test_http"
	@echo "... bobliew/address.o"
	@echo "... bobliew/address.i"
	@echo "... bobliew/address.s"
	@echo "... bobliew/bytearray.o"
	@echo "... bobliew/bytearray.i"
	@echo "... bobliew/bytearray.s"
	@echo "... bobliew/config.o"
	@echo "... bobliew/config.i"
	@echo "... bobliew/config.s"
	@echo "... bobliew/fd_manager.o"
	@echo "... bobliew/fd_manager.i"
	@echo "... bobliew/fd_manager.s"
	@echo "... bobliew/fiber.o"
	@echo "... bobliew/fiber.i"
	@echo "... bobliew/fiber.s"
	@echo "... bobliew/hook.o"
	@echo "... bobliew/hook.i"
	@echo "... bobliew/hook.s"
	@echo "... bobliew/http/http.o"
	@echo "... bobliew/http/http.i"
	@echo "... bobliew/http/http.s"
	@echo "... bobliew/http/http11_parser.o"
	@echo "... bobliew/http/http11_parser.i"
	@echo "... bobliew/http/http11_parser.s"
	@echo "... bobliew/http/http_parser.o"
	@echo "... bobliew/http/http_parser.i"
	@echo "... bobliew/http/http_parser.s"
	@echo "... bobliew/http/httpclient_parser.o"
	@echo "... bobliew/http/httpclient_parser.i"
	@echo "... bobliew/http/httpclient_parser.s"
	@echo "... bobliew/iomanager.o"
	@echo "... bobliew/iomanager.i"
	@echo "... bobliew/iomanager.s"
	@echo "... bobliew/log.o"
	@echo "... bobliew/log.i"
	@echo "... bobliew/log.s"
	@echo "... bobliew/scheduler.o"
	@echo "... bobliew/scheduler.i"
	@echo "... bobliew/scheduler.s"
	@echo "... bobliew/thread.o"
	@echo "... bobliew/thread.i"
	@echo "... bobliew/thread.s"
	@echo "... bobliew/timer.o"
	@echo "... bobliew/timer.i"
	@echo "... bobliew/timer.s"
	@echo "... bobliew/util.o"
	@echo "... bobliew/util.i"
	@echo "... bobliew/util.s"
	@echo "... tests/test.o"
	@echo "... tests/test.i"
	@echo "... tests/test.s"
	@echo "... tests/test_address.o"
	@echo "... tests/test_address.i"
	@echo "... tests/test_address.s"
	@echo "... tests/test_bytearray.o"
	@echo "... tests/test_bytearray.i"
	@echo "... tests/test_bytearray.s"
	@echo "... tests/test_config.o"
	@echo "... tests/test_config.i"
	@echo "... tests/test_config.s"
	@echo "... tests/test_configs.o"
	@echo "... tests/test_configs.i"
	@echo "... tests/test_configs.s"
	@echo "... tests/test_fiber.o"
	@echo "... tests/test_fiber.i"
	@echo "... tests/test_fiber.s"
	@echo "... tests/test_hook.o"
	@echo "... tests/test_hook.i"
	@echo "... tests/test_hook.s"
	@echo "... tests/test_http.o"
	@echo "... tests/test_http.i"
	@echo "... tests/test_http.s"
	@echo "... tests/test_iomanager.o"
	@echo "... tests/test_iomanager.i"
	@echo "... tests/test_iomanager.s"
	@echo "... tests/test_scheduler.o"
	@echo "... tests/test_scheduler.i"
	@echo "... tests/test_scheduler.s"
	@echo "... tests/test_thread.o"
	@echo "... tests/test_thread.i"
	@echo "... tests/test_thread.s"
	@echo "... tests/test_util.o"
	@echo "... tests/test_util.i"
	@echo "... tests/test_util.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

