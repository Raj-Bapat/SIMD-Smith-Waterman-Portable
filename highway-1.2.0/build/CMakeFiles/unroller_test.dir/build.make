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
include CMakeFiles/unroller_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/unroller_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/unroller_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/unroller_test.dir/flags.make

CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.o: CMakeFiles/unroller_test.dir/flags.make
CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.o: ../hwy/contrib/unroller/unroller_test.cc
CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.o: CMakeFiles/unroller_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.o -MF CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.o.d -o CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.o -c /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/unroller/unroller_test.cc

CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/unroller/unroller_test.cc > CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.i

CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/unroller/unroller_test.cc -o CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.s

# Object files for target unroller_test
unroller_test_OBJECTS = \
"CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.o"

# External object files for target unroller_test
unroller_test_EXTERNAL_OBJECTS =

tests/unroller_test: CMakeFiles/unroller_test.dir/hwy/contrib/unroller/unroller_test.cc.o
tests/unroller_test: CMakeFiles/unroller_test.dir/build.make
tests/unroller_test: libhwy.a
tests/unroller_test: libhwy_test.a
tests/unroller_test: libhwy_contrib.a
tests/unroller_test: lib/libgtest.a
tests/unroller_test: lib/libgtest_main.a
tests/unroller_test: libhwy.a
tests/unroller_test: lib/libgtest.a
tests/unroller_test: CMakeFiles/unroller_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tests/unroller_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unroller_test.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -D TEST_TARGET=unroller_test -D TEST_EXECUTABLE=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tests/unroller_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=unroller_test_TESTS -D CTEST_FILE=/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/unroller_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=60 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/unroller_test.dir/build: tests/unroller_test
.PHONY : CMakeFiles/unroller_test.dir/build

CMakeFiles/unroller_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/unroller_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/unroller_test.dir/clean

CMakeFiles/unroller_test.dir/depend:
	cd /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0 /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0 /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/CMakeFiles/unroller_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/unroller_test.dir/depend

