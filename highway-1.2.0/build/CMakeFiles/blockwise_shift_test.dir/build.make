# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build

# Include any dependencies generated for this target.
include CMakeFiles/blockwise_shift_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/blockwise_shift_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/blockwise_shift_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/blockwise_shift_test.dir/flags.make

CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.o: CMakeFiles/blockwise_shift_test.dir/flags.make
CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.o: ../hwy/tests/blockwise_shift_test.cc
CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.o: CMakeFiles/blockwise_shift_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.o -MF CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.o.d -o CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.o -c /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/tests/blockwise_shift_test.cc

CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/tests/blockwise_shift_test.cc > CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.i

CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/tests/blockwise_shift_test.cc -o CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.s

# Object files for target blockwise_shift_test
blockwise_shift_test_OBJECTS = \
"CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.o"

# External object files for target blockwise_shift_test
blockwise_shift_test_EXTERNAL_OBJECTS =

tests/blockwise_shift_test: CMakeFiles/blockwise_shift_test.dir/hwy/tests/blockwise_shift_test.cc.o
tests/blockwise_shift_test: CMakeFiles/blockwise_shift_test.dir/build.make
tests/blockwise_shift_test: libhwy.a
tests/blockwise_shift_test: libhwy_test.a
tests/blockwise_shift_test: libhwy_contrib.a
tests/blockwise_shift_test: lib/libgtest.a
tests/blockwise_shift_test: lib/libgtest_main.a
tests/blockwise_shift_test: libhwy.a
tests/blockwise_shift_test: lib/libgtest.a
tests/blockwise_shift_test: CMakeFiles/blockwise_shift_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tests/blockwise_shift_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blockwise_shift_test.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -D TEST_TARGET=blockwise_shift_test -D TEST_EXECUTABLE=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tests/blockwise_shift_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=blockwise_shift_test_TESTS -D CTEST_FILE=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/blockwise_shift_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=60 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/blockwise_shift_test.dir/build: tests/blockwise_shift_test
.PHONY : CMakeFiles/blockwise_shift_test.dir/build

CMakeFiles/blockwise_shift_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/blockwise_shift_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/blockwise_shift_test.dir/clean

CMakeFiles/blockwise_shift_test.dir/depend:
	cd /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0 /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0 /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/CMakeFiles/blockwise_shift_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/blockwise_shift_test.dir/depend

