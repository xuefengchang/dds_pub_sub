# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/cxf/code/dds_pub_sub

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cxf/code/dds_pub_sub/build

# Include any dependencies generated for this target.
include CMakeFiles/sub.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sub.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sub.dir/flags.make

CMakeFiles/sub.dir/src/sub.cpp.o: CMakeFiles/sub.dir/flags.make
CMakeFiles/sub.dir/src/sub.cpp.o: ../src/sub.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cxf/code/dds_pub_sub/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sub.dir/src/sub.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sub.dir/src/sub.cpp.o -c /home/cxf/code/dds_pub_sub/src/sub.cpp

CMakeFiles/sub.dir/src/sub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sub.dir/src/sub.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cxf/code/dds_pub_sub/src/sub.cpp > CMakeFiles/sub.dir/src/sub.cpp.i

CMakeFiles/sub.dir/src/sub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sub.dir/src/sub.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cxf/code/dds_pub_sub/src/sub.cpp -o CMakeFiles/sub.dir/src/sub.cpp.s

CMakeFiles/sub.dir/src/sub.cpp.o.requires:
.PHONY : CMakeFiles/sub.dir/src/sub.cpp.o.requires

CMakeFiles/sub.dir/src/sub.cpp.o.provides: CMakeFiles/sub.dir/src/sub.cpp.o.requires
	$(MAKE) -f CMakeFiles/sub.dir/build.make CMakeFiles/sub.dir/src/sub.cpp.o.provides.build
.PHONY : CMakeFiles/sub.dir/src/sub.cpp.o.provides

CMakeFiles/sub.dir/src/sub.cpp.o.provides.build: CMakeFiles/sub.dir/src/sub.cpp.o

# Object files for target sub
sub_OBJECTS = \
"CMakeFiles/sub.dir/src/sub.cpp.o"

# External object files for target sub
sub_EXTERNAL_OBJECTS =

../bin/sub: CMakeFiles/sub.dir/src/sub.cpp.o
../bin/sub: CMakeFiles/sub.dir/build.make
../bin/sub: /home/cxf/HDE/x86_64.linux/lib/libddskernel.so
../bin/sub: /home/cxf/HDE/x86_64.linux/lib/libdcpsisocpp.so
../bin/sub: /home/cxf/HDE/x86_64.linux/lib/libdcpssacpp.so
../bin/sub: ../lib/libopensplice_dds_pub_sub.so
../bin/sub: CMakeFiles/sub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/sub"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sub.dir/build: ../bin/sub
.PHONY : CMakeFiles/sub.dir/build

CMakeFiles/sub.dir/requires: CMakeFiles/sub.dir/src/sub.cpp.o.requires
.PHONY : CMakeFiles/sub.dir/requires

CMakeFiles/sub.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sub.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sub.dir/clean

CMakeFiles/sub.dir/depend:
	cd /home/cxf/code/dds_pub_sub/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cxf/code/dds_pub_sub /home/cxf/code/dds_pub_sub /home/cxf/code/dds_pub_sub/build /home/cxf/code/dds_pub_sub/build /home/cxf/code/dds_pub_sub/build/CMakeFiles/sub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sub.dir/depend

