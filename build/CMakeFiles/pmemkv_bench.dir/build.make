# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build

# Include any dependencies generated for this target.
include CMakeFiles/pmemkv_bench.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pmemkv_bench.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pmemkv_bench.dir/flags.make

CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.o: CMakeFiles/pmemkv_bench.dir/flags.make
CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.o: ../src/pmemkv_bench.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.o -c /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/src/pmemkv_bench.cc

CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/src/pmemkv_bench.cc > CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.i

CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/src/pmemkv_bench.cc -o CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.s

CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.o: CMakeFiles/pmemkv_bench.dir/flags.make
CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.o: ../leveldb/port/port_posix.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.o -c /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/port/port_posix.cc

CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/port/port_posix.cc > CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.i

CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/port/port_posix.cc -o CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.s

CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.o: CMakeFiles/pmemkv_bench.dir/flags.make
CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.o: ../leveldb/util/env.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.o -c /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/env.cc

CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/env.cc > CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.i

CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/env.cc -o CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.s

CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.o: CMakeFiles/pmemkv_bench.dir/flags.make
CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.o: ../leveldb/util/env_posix.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.o -c /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/env_posix.cc

CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/env_posix.cc > CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.i

CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/env_posix.cc -o CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.s

CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.o: CMakeFiles/pmemkv_bench.dir/flags.make
CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.o: ../leveldb/util/histogram.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.o -c /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/histogram.cc

CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/histogram.cc > CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.i

CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/histogram.cc -o CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.s

CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.o: CMakeFiles/pmemkv_bench.dir/flags.make
CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.o: ../leveldb/util/logging.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.o -c /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/logging.cc

CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/logging.cc > CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.i

CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/logging.cc -o CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.s

CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.o: CMakeFiles/pmemkv_bench.dir/flags.make
CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.o: ../leveldb/util/status.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.o -c /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/status.cc

CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/status.cc > CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.i

CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/leveldb/util/status.cc -o CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.s

# Object files for target pmemkv_bench
pmemkv_bench_OBJECTS = \
"CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.o" \
"CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.o" \
"CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.o" \
"CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.o" \
"CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.o" \
"CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.o" \
"CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.o"

# External object files for target pmemkv_bench
pmemkv_bench_EXTERNAL_OBJECTS =

pmemkv_bench: CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.o
pmemkv_bench: CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.o
pmemkv_bench: CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.o
pmemkv_bench: CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.o
pmemkv_bench: CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.o
pmemkv_bench: CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.o
pmemkv_bench: CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.o
pmemkv_bench: CMakeFiles/pmemkv_bench.dir/build.make
pmemkv_bench: libpmemkv.so
pmemkv_bench: CMakeFiles/pmemkv_bench.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable pmemkv_bench"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pmemkv_bench.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pmemkv_bench.dir/build: pmemkv_bench

.PHONY : CMakeFiles/pmemkv_bench.dir/build

CMakeFiles/pmemkv_bench.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pmemkv_bench.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pmemkv_bench.dir/clean

CMakeFiles/pmemkv_bench.dir/depend:
	cd /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build /root/lab505/app_source/mycode_pmemkv/pmemkv_with_woart/build/CMakeFiles/pmemkv_bench.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pmemkv_bench.dir/depend

