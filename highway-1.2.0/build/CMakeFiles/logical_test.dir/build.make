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
include CMakeFiles/logical_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/logical_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/logical_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/logical_test.dir/flags.make

CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.o: CMakeFiles/logical_test.dir/flags.make
CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.o: ../hwy/tests/logical_test.cc
CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.o: CMakeFiles/logical_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.o -MF CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.o.d -o CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.o -c /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/tests/logical_test.cc

CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/tests/logical_test.cc > CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.i

CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/tests/logical_test.cc -o CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.s

# Object files for target logical_test
logical_test_OBJECTS = \
"CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.o"

# External object files for target logical_test
logical_test_EXTERNAL_OBJECTS =

tests/logical_test: CMakeFiles/logical_test.dir/hwy/tests/logical_test.cc.o
tests/logical_test: CMakeFiles/logical_test.dir/build.make
tests/logical_test: libhwy.a
tests/logical_test: libhwy_test.a
tests/logical_test: libhwy_contrib.a
tests/logical_test: lib/libgtest.a
tests/logical_test: lib/libgtest_main.a
tests/logical_test: libhwy.a
tests/logical_test: lib/libgtest.a
tests/logical_test: CMakeFiles/logical_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tests/logical_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/logical_test.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -D TEST_TARGET=logical_test -D TEST_EXECUTABLE=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tests/logical_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=logical_test_TESTS -D CTEST_FILE=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/logical_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=60 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/logical_test.dir/build: tests/logical_test
.PHONY : CMakeFiles/logical_test.dir/build

CMakeFiles/logical_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/logical_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/logical_test.dir/clean

CMakeFiles/logical_test.dir/depend:
	cd /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0 /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0 /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/CMakeFiles/logical_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/logical_test.dir/depend

