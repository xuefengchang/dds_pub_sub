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
include CMakeFiles/opensplice_dds_pub_sub.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/opensplice_dds_pub_sub.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/opensplice_dds_pub_sub.dir/flags.make

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o: CMakeFiles/opensplice_dds_pub_sub.dir/flags.make
CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o: ../src/MSFPPacket.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cxf/code/dds_pub_sub/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o -c /home/cxf/code/dds_pub_sub/src/MSFPPacket.cpp

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cxf/code/dds_pub_sub/src/MSFPPacket.cpp > CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.i

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cxf/code/dds_pub_sub/src/MSFPPacket.cpp -o CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.s

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o.requires:
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o.requires

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o.provides: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o.requires
	$(MAKE) -f CMakeFiles/opensplice_dds_pub_sub.dir/build.make CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o.provides.build
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o.provides

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o.provides.build: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o: CMakeFiles/opensplice_dds_pub_sub.dir/flags.make
CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o: ../src/MSFPPacketDcps.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cxf/code/dds_pub_sub/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o -c /home/cxf/code/dds_pub_sub/src/MSFPPacketDcps.cpp

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cxf/code/dds_pub_sub/src/MSFPPacketDcps.cpp > CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.i

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cxf/code/dds_pub_sub/src/MSFPPacketDcps.cpp -o CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.s

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o.requires:
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o.requires

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o.provides: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o.requires
	$(MAKE) -f CMakeFiles/opensplice_dds_pub_sub.dir/build.make CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o.provides.build
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o.provides

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o.provides.build: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o: CMakeFiles/opensplice_dds_pub_sub.dir/flags.make
CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o: ../src/MSFPPacketDcps_impl.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cxf/code/dds_pub_sub/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o -c /home/cxf/code/dds_pub_sub/src/MSFPPacketDcps_impl.cpp

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cxf/code/dds_pub_sub/src/MSFPPacketDcps_impl.cpp > CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.i

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cxf/code/dds_pub_sub/src/MSFPPacketDcps_impl.cpp -o CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.s

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o.requires:
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o.requires

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o.provides: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o.requires
	$(MAKE) -f CMakeFiles/opensplice_dds_pub_sub.dir/build.make CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o.provides.build
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o.provides

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o.provides.build: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o: CMakeFiles/opensplice_dds_pub_sub.dir/flags.make
CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o: ../src/MSFPPacketSplDcps.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cxf/code/dds_pub_sub/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o -c /home/cxf/code/dds_pub_sub/src/MSFPPacketSplDcps.cpp

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cxf/code/dds_pub_sub/src/MSFPPacketSplDcps.cpp > CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.i

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cxf/code/dds_pub_sub/src/MSFPPacketSplDcps.cpp -o CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.s

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o.requires:
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o.requires

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o.provides: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o.requires
	$(MAKE) -f CMakeFiles/opensplice_dds_pub_sub.dir/build.make CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o.provides.build
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o.provides

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o.provides.build: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o

CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o: CMakeFiles/opensplice_dds_pub_sub.dir/flags.make
CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o: ../src/check_status.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cxf/code/dds_pub_sub/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o -c /home/cxf/code/dds_pub_sub/src/check_status.cpp

CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cxf/code/dds_pub_sub/src/check_status.cpp > CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.i

CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cxf/code/dds_pub_sub/src/check_status.cpp -o CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.s

CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o.requires:
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o.requires

CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o.provides: CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o.requires
	$(MAKE) -f CMakeFiles/opensplice_dds_pub_sub.dir/build.make CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o.provides.build
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o.provides

CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o.provides.build: CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o: CMakeFiles/opensplice_dds_pub_sub.dir/flags.make
CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o: ../src/MSFPPacket_listener.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cxf/code/dds_pub_sub/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o -c /home/cxf/code/dds_pub_sub/src/MSFPPacket_listener.cpp

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cxf/code/dds_pub_sub/src/MSFPPacket_listener.cpp > CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.i

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cxf/code/dds_pub_sub/src/MSFPPacket_listener.cpp -o CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.s

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o.requires:
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o.requires

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o.provides: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o.requires
	$(MAKE) -f CMakeFiles/opensplice_dds_pub_sub.dir/build.make CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o.provides.build
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o.provides

CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o.provides.build: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o

CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o: CMakeFiles/opensplice_dds_pub_sub.dir/flags.make
CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o: ../src/publisher.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cxf/code/dds_pub_sub/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o -c /home/cxf/code/dds_pub_sub/src/publisher.cpp

CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cxf/code/dds_pub_sub/src/publisher.cpp > CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.i

CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cxf/code/dds_pub_sub/src/publisher.cpp -o CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.s

CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o.requires:
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o.requires

CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o.provides: CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o.requires
	$(MAKE) -f CMakeFiles/opensplice_dds_pub_sub.dir/build.make CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o.provides.build
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o.provides

CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o.provides.build: CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o

CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o: CMakeFiles/opensplice_dds_pub_sub.dir/flags.make
CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o: ../src/subscriber.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cxf/code/dds_pub_sub/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o -c /home/cxf/code/dds_pub_sub/src/subscriber.cpp

CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cxf/code/dds_pub_sub/src/subscriber.cpp > CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.i

CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cxf/code/dds_pub_sub/src/subscriber.cpp -o CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.s

CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o.requires:
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o.requires

CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o.provides: CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o.requires
	$(MAKE) -f CMakeFiles/opensplice_dds_pub_sub.dir/build.make CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o.provides.build
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o.provides

CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o.provides.build: CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o

# Object files for target opensplice_dds_pub_sub
opensplice_dds_pub_sub_OBJECTS = \
"CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o" \
"CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o" \
"CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o" \
"CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o" \
"CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o" \
"CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o" \
"CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o" \
"CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o"

# External object files for target opensplice_dds_pub_sub
opensplice_dds_pub_sub_EXTERNAL_OBJECTS =

../lib/libopensplice_dds_pub_sub.so: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o
../lib/libopensplice_dds_pub_sub.so: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o
../lib/libopensplice_dds_pub_sub.so: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o
../lib/libopensplice_dds_pub_sub.so: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o
../lib/libopensplice_dds_pub_sub.so: CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o
../lib/libopensplice_dds_pub_sub.so: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o
../lib/libopensplice_dds_pub_sub.so: CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o
../lib/libopensplice_dds_pub_sub.so: CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o
../lib/libopensplice_dds_pub_sub.so: CMakeFiles/opensplice_dds_pub_sub.dir/build.make
../lib/libopensplice_dds_pub_sub.so: CMakeFiles/opensplice_dds_pub_sub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../lib/libopensplice_dds_pub_sub.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opensplice_dds_pub_sub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/opensplice_dds_pub_sub.dir/build: ../lib/libopensplice_dds_pub_sub.so
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/build

CMakeFiles/opensplice_dds_pub_sub.dir/requires: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket.cpp.o.requires
CMakeFiles/opensplice_dds_pub_sub.dir/requires: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps.cpp.o.requires
CMakeFiles/opensplice_dds_pub_sub.dir/requires: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketDcps_impl.cpp.o.requires
CMakeFiles/opensplice_dds_pub_sub.dir/requires: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacketSplDcps.cpp.o.requires
CMakeFiles/opensplice_dds_pub_sub.dir/requires: CMakeFiles/opensplice_dds_pub_sub.dir/src/check_status.cpp.o.requires
CMakeFiles/opensplice_dds_pub_sub.dir/requires: CMakeFiles/opensplice_dds_pub_sub.dir/src/MSFPPacket_listener.cpp.o.requires
CMakeFiles/opensplice_dds_pub_sub.dir/requires: CMakeFiles/opensplice_dds_pub_sub.dir/src/publisher.cpp.o.requires
CMakeFiles/opensplice_dds_pub_sub.dir/requires: CMakeFiles/opensplice_dds_pub_sub.dir/src/subscriber.cpp.o.requires
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/requires

CMakeFiles/opensplice_dds_pub_sub.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opensplice_dds_pub_sub.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/clean

CMakeFiles/opensplice_dds_pub_sub.dir/depend:
	cd /home/cxf/code/dds_pub_sub/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cxf/code/dds_pub_sub /home/cxf/code/dds_pub_sub /home/cxf/code/dds_pub_sub/build /home/cxf/code/dds_pub_sub/build /home/cxf/code/dds_pub_sub/build/CMakeFiles/opensplice_dds_pub_sub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opensplice_dds_pub_sub.dir/depend

