# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_SOURCE_DIR = /home/ubuntu/log/glog/google_glog/glog

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/log/glog/google_glog/glog/build

# Include any dependencies generated for this target.
include CMakeFiles/stl_logging_unittest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/stl_logging_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stl_logging_unittest.dir/flags.make

CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o: CMakeFiles/stl_logging_unittest.dir/flags.make
CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o: ../src/stl_logging_unittest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/log/glog/google_glog/glog/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o -c /home/ubuntu/log/glog/google_glog/glog/src/stl_logging_unittest.cc

CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/log/glog/google_glog/glog/src/stl_logging_unittest.cc > CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.i

CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/log/glog/google_glog/glog/src/stl_logging_unittest.cc -o CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.s

CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o.requires:

.PHONY : CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o.requires

CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o.provides: CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o.requires
	$(MAKE) -f CMakeFiles/stl_logging_unittest.dir/build.make CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o.provides.build
.PHONY : CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o.provides

CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o.provides.build: CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o


# Object files for target stl_logging_unittest
stl_logging_unittest_OBJECTS = \
"CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o"

# External object files for target stl_logging_unittest
stl_logging_unittest_EXTERNAL_OBJECTS =

stl_logging_unittest: CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o
stl_logging_unittest: CMakeFiles/stl_logging_unittest.dir/build.make
stl_logging_unittest: libglog.a
stl_logging_unittest: /usr/lib/x86_64-linux-gnu/libunwind.so
stl_logging_unittest: /usr/lib/x86_64-linux-gnu/libunwind-x86_64.so
stl_logging_unittest: /usr/lib/x86_64-linux-gnu/libgflags.so.2.2.1
stl_logging_unittest: CMakeFiles/stl_logging_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/log/glog/google_glog/glog/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable stl_logging_unittest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stl_logging_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stl_logging_unittest.dir/build: stl_logging_unittest

.PHONY : CMakeFiles/stl_logging_unittest.dir/build

CMakeFiles/stl_logging_unittest.dir/requires: CMakeFiles/stl_logging_unittest.dir/src/stl_logging_unittest.cc.o.requires

.PHONY : CMakeFiles/stl_logging_unittest.dir/requires

CMakeFiles/stl_logging_unittest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stl_logging_unittest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stl_logging_unittest.dir/clean

CMakeFiles/stl_logging_unittest.dir/depend:
	cd /home/ubuntu/log/glog/google_glog/glog/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/log/glog/google_glog/glog /home/ubuntu/log/glog/google_glog/glog /home/ubuntu/log/glog/google_glog/glog/build /home/ubuntu/log/glog/google_glog/glog/build /home/ubuntu/log/glog/google_glog/glog/build/CMakeFiles/stl_logging_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/stl_logging_unittest.dir/depend

