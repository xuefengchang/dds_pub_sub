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
CMAKE_SOURCE_DIR = /home/cxf/dds_pub_sub

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cxf/dds_pub_sub/build

# Include any dependencies generated for this target.
include CMakeFiles/messageboard.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/messageboard.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/messageboard.dir/flags.make

CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o: CMakeFiles/messageboard.dir/flags.make
CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o: ../src/MessageBoard.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cxf/dds_pub_sub/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o -c /home/cxf/dds_pub_sub/src/MessageBoard.cpp

CMakeFiles/messageboard.dir/src/MessageBoard.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/messageboard.dir/src/MessageBoard.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cxf/dds_pub_sub/src/MessageBoard.cpp > CMakeFiles/messageboard.dir/src/MessageBoard.cpp.i

CMakeFiles/messageboard.dir/src/MessageBoard.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/messageboard.dir/src/MessageBoard.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cxf/dds_pub_sub/src/MessageBoard.cpp -o CMakeFiles/messageboard.dir/src/MessageBoard.cpp.s

CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o.requires:
.PHONY : CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o.requires

CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o.provides: CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o.requires
	$(MAKE) -f CMakeFiles/messageboard.dir/build.make CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o.provides.build
.PHONY : CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o.provides

CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o.provides.build: CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o

CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o: CMakeFiles/messageboard.dir/flags.make
CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o: ../src/CheckStatus.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cxf/dds_pub_sub/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o -c /home/cxf/dds_pub_sub/src/CheckStatus.cpp

CMakeFiles/messageboard.dir/src/CheckStatus.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/messageboard.dir/src/CheckStatus.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cxf/dds_pub_sub/src/CheckStatus.cpp > CMakeFiles/messageboard.dir/src/CheckStatus.cpp.i

CMakeFiles/messageboard.dir/src/CheckStatus.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/messageboard.dir/src/CheckStatus.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cxf/dds_pub_sub/src/CheckStatus.cpp -o CMakeFiles/messageboard.dir/src/CheckStatus.cpp.s

CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o.requires:
.PHONY : CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o.requires

CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o.provides: CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o.requires
	$(MAKE) -f CMakeFiles/messageboard.dir/build.make CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o.provides.build
.PHONY : CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o.provides

CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o.provides.build: CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o

# Object files for target messageboard
messageboard_OBJECTS = \
"CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o" \
"CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o"

# External object files for target messageboard
messageboard_EXTERNAL_OBJECTS =

../bin/messageboard: CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o
../bin/messageboard: CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o
../bin/messageboard: CMakeFiles/messageboard.dir/build.make
../bin/messageboard: /home/cxf/HDE/x86_64.linux/lib/libddskernel.so
../bin/messageboard: /home/cxf/HDE/x86_64.linux/lib/libdcpsisocpp.so
../bin/messageboard: /home/cxf/HDE/x86_64.linux/lib/libdcpssacpp.so
../bin/messageboard: ../lib/liblibsacpp_pub_sub_types.so
../bin/messageboard: CMakeFiles/messageboard.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/messageboard"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/messageboard.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/messageboard.dir/build: ../bin/messageboard
.PHONY : CMakeFiles/messageboard.dir/build

CMakeFiles/messageboard.dir/requires: CMakeFiles/messageboard.dir/src/MessageBoard.cpp.o.requires
CMakeFiles/messageboard.dir/requires: CMakeFiles/messageboard.dir/src/CheckStatus.cpp.o.requires
.PHONY : CMakeFiles/messageboard.dir/requires

CMakeFiles/messageboard.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/messageboard.dir/cmake_clean.cmake
.PHONY : CMakeFiles/messageboard.dir/clean

CMakeFiles/messageboard.dir/depend:
	cd /home/cxf/dds_pub_sub/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cxf/dds_pub_sub /home/cxf/dds_pub_sub /home/cxf/dds_pub_sub/build /home/cxf/dds_pub_sub/build /home/cxf/dds_pub_sub/build/CMakeFiles/messageboard.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/messageboard.dir/depend

