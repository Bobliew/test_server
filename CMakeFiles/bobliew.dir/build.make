# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# Include any dependencies generated for this target.
include CMakeFiles/bobliew.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bobliew.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bobliew.dir/flags.make

CMakeFiles/bobliew.dir/bobliew/log.cc.o: CMakeFiles/bobliew.dir/flags.make
CMakeFiles/bobliew.dir/bobliew/log.cc.o: bobliew/log.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobliew/data/bobliew/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bobliew.dir/bobliew/log.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"bobliew/log.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bobliew.dir/bobliew/log.cc.o -c /home/bobliew/data/bobliew/bobliew/log.cc

CMakeFiles/bobliew.dir/bobliew/log.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bobliew.dir/bobliew/log.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"bobliew/log.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bobliew/data/bobliew/bobliew/log.cc > CMakeFiles/bobliew.dir/bobliew/log.cc.i

CMakeFiles/bobliew.dir/bobliew/log.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bobliew.dir/bobliew/log.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"bobliew/log.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bobliew/data/bobliew/bobliew/log.cc -o CMakeFiles/bobliew.dir/bobliew/log.cc.s

CMakeFiles/bobliew.dir/bobliew/config.cc.o: CMakeFiles/bobliew.dir/flags.make
CMakeFiles/bobliew.dir/bobliew/config.cc.o: bobliew/config.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobliew/data/bobliew/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/bobliew.dir/bobliew/config.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"bobliew/config.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bobliew.dir/bobliew/config.cc.o -c /home/bobliew/data/bobliew/bobliew/config.cc

CMakeFiles/bobliew.dir/bobliew/config.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bobliew.dir/bobliew/config.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"bobliew/config.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bobliew/data/bobliew/bobliew/config.cc > CMakeFiles/bobliew.dir/bobliew/config.cc.i

CMakeFiles/bobliew.dir/bobliew/config.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bobliew.dir/bobliew/config.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"bobliew/config.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bobliew/data/bobliew/bobliew/config.cc -o CMakeFiles/bobliew.dir/bobliew/config.cc.s

CMakeFiles/bobliew.dir/bobliew/util.cc.o: CMakeFiles/bobliew.dir/flags.make
CMakeFiles/bobliew.dir/bobliew/util.cc.o: bobliew/util.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobliew/data/bobliew/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/bobliew.dir/bobliew/util.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"bobliew/util.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bobliew.dir/bobliew/util.cc.o -c /home/bobliew/data/bobliew/bobliew/util.cc

CMakeFiles/bobliew.dir/bobliew/util.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bobliew.dir/bobliew/util.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"bobliew/util.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bobliew/data/bobliew/bobliew/util.cc > CMakeFiles/bobliew.dir/bobliew/util.cc.i

CMakeFiles/bobliew.dir/bobliew/util.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bobliew.dir/bobliew/util.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"bobliew/util.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bobliew/data/bobliew/bobliew/util.cc -o CMakeFiles/bobliew.dir/bobliew/util.cc.s

CMakeFiles/bobliew.dir/bobliew/thread.cc.o: CMakeFiles/bobliew.dir/flags.make
CMakeFiles/bobliew.dir/bobliew/thread.cc.o: bobliew/thread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobliew/data/bobliew/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/bobliew.dir/bobliew/thread.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"bobliew/thread.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bobliew.dir/bobliew/thread.cc.o -c /home/bobliew/data/bobliew/bobliew/thread.cc

CMakeFiles/bobliew.dir/bobliew/thread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bobliew.dir/bobliew/thread.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"bobliew/thread.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bobliew/data/bobliew/bobliew/thread.cc > CMakeFiles/bobliew.dir/bobliew/thread.cc.i

CMakeFiles/bobliew.dir/bobliew/thread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bobliew.dir/bobliew/thread.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"bobliew/thread.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bobliew/data/bobliew/bobliew/thread.cc -o CMakeFiles/bobliew.dir/bobliew/thread.cc.s

CMakeFiles/bobliew.dir/bobliew/fiber.cc.o: CMakeFiles/bobliew.dir/flags.make
CMakeFiles/bobliew.dir/bobliew/fiber.cc.o: bobliew/fiber.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobliew/data/bobliew/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/bobliew.dir/bobliew/fiber.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"bobliew/fiber.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bobliew.dir/bobliew/fiber.cc.o -c /home/bobliew/data/bobliew/bobliew/fiber.cc

CMakeFiles/bobliew.dir/bobliew/fiber.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bobliew.dir/bobliew/fiber.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"bobliew/fiber.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bobliew/data/bobliew/bobliew/fiber.cc > CMakeFiles/bobliew.dir/bobliew/fiber.cc.i

CMakeFiles/bobliew.dir/bobliew/fiber.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bobliew.dir/bobliew/fiber.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"bobliew/fiber.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bobliew/data/bobliew/bobliew/fiber.cc -o CMakeFiles/bobliew.dir/bobliew/fiber.cc.s

CMakeFiles/bobliew.dir/bobliew/scheduler.cc.o: CMakeFiles/bobliew.dir/flags.make
CMakeFiles/bobliew.dir/bobliew/scheduler.cc.o: bobliew/scheduler.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bobliew/data/bobliew/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/bobliew.dir/bobliew/scheduler.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"bobliew/scheduler.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bobliew.dir/bobliew/scheduler.cc.o -c /home/bobliew/data/bobliew/bobliew/scheduler.cc

CMakeFiles/bobliew.dir/bobliew/scheduler.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bobliew.dir/bobliew/scheduler.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"bobliew/scheduler.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bobliew/data/bobliew/bobliew/scheduler.cc > CMakeFiles/bobliew.dir/bobliew/scheduler.cc.i

CMakeFiles/bobliew.dir/bobliew/scheduler.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bobliew.dir/bobliew/scheduler.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"bobliew/scheduler.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bobliew/data/bobliew/bobliew/scheduler.cc -o CMakeFiles/bobliew.dir/bobliew/scheduler.cc.s

# Object files for target bobliew
bobliew_OBJECTS = \
"CMakeFiles/bobliew.dir/bobliew/log.cc.o" \
"CMakeFiles/bobliew.dir/bobliew/config.cc.o" \
"CMakeFiles/bobliew.dir/bobliew/util.cc.o" \
"CMakeFiles/bobliew.dir/bobliew/thread.cc.o" \
"CMakeFiles/bobliew.dir/bobliew/fiber.cc.o" \
"CMakeFiles/bobliew.dir/bobliew/scheduler.cc.o"

# External object files for target bobliew
bobliew_EXTERNAL_OBJECTS =

lib/libbobliew.so: CMakeFiles/bobliew.dir/bobliew/log.cc.o
lib/libbobliew.so: CMakeFiles/bobliew.dir/bobliew/config.cc.o
lib/libbobliew.so: CMakeFiles/bobliew.dir/bobliew/util.cc.o
lib/libbobliew.so: CMakeFiles/bobliew.dir/bobliew/thread.cc.o
lib/libbobliew.so: CMakeFiles/bobliew.dir/bobliew/fiber.cc.o
lib/libbobliew.so: CMakeFiles/bobliew.dir/bobliew/scheduler.cc.o
lib/libbobliew.so: CMakeFiles/bobliew.dir/build.make
lib/libbobliew.so: CMakeFiles/bobliew.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bobliew/data/bobliew/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX shared library lib/libbobliew.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bobliew.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bobliew.dir/build: lib/libbobliew.so

.PHONY : CMakeFiles/bobliew.dir/build

CMakeFiles/bobliew.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bobliew.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bobliew.dir/clean

CMakeFiles/bobliew.dir/depend:
	cd /home/bobliew/data/bobliew && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bobliew/data/bobliew /home/bobliew/data/bobliew /home/bobliew/data/bobliew /home/bobliew/data/bobliew /home/bobliew/data/bobliew/CMakeFiles/bobliew.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bobliew.dir/depend

