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
CMAKE_SOURCE_DIR = /home/elvina/avs4sem-master/lab02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/elvina/avs4sem-master/lab02/build

# Include any dependencies generated for this target.
include unittest/CMakeFiles/Doctest_tests_run.dir/depend.make

# Include the progress variables for this target.
include unittest/CMakeFiles/Doctest_tests_run.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/CMakeFiles/Doctest_tests_run.dir/flags.make

unittest/CMakeFiles/Doctest_tests_run.dir/DecoderTests.cpp.o: unittest/CMakeFiles/Doctest_tests_run.dir/flags.make
unittest/CMakeFiles/Doctest_tests_run.dir/DecoderTests.cpp.o: ../unittest/DecoderTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elvina/avs4sem-master/lab02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unittest/CMakeFiles/Doctest_tests_run.dir/DecoderTests.cpp.o"
	cd /home/elvina/avs4sem-master/lab02/build/unittest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Doctest_tests_run.dir/DecoderTests.cpp.o -c /home/elvina/avs4sem-master/lab02/unittest/DecoderTests.cpp

unittest/CMakeFiles/Doctest_tests_run.dir/DecoderTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Doctest_tests_run.dir/DecoderTests.cpp.i"
	cd /home/elvina/avs4sem-master/lab02/build/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elvina/avs4sem-master/lab02/unittest/DecoderTests.cpp > CMakeFiles/Doctest_tests_run.dir/DecoderTests.cpp.i

unittest/CMakeFiles/Doctest_tests_run.dir/DecoderTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Doctest_tests_run.dir/DecoderTests.cpp.s"
	cd /home/elvina/avs4sem-master/lab02/build/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elvina/avs4sem-master/lab02/unittest/DecoderTests.cpp -o CMakeFiles/Doctest_tests_run.dir/DecoderTests.cpp.s

unittest/CMakeFiles/Doctest_tests_run.dir/ExecutorTests.cpp.o: unittest/CMakeFiles/Doctest_tests_run.dir/flags.make
unittest/CMakeFiles/Doctest_tests_run.dir/ExecutorTests.cpp.o: ../unittest/ExecutorTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elvina/avs4sem-master/lab02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object unittest/CMakeFiles/Doctest_tests_run.dir/ExecutorTests.cpp.o"
	cd /home/elvina/avs4sem-master/lab02/build/unittest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Doctest_tests_run.dir/ExecutorTests.cpp.o -c /home/elvina/avs4sem-master/lab02/unittest/ExecutorTests.cpp

unittest/CMakeFiles/Doctest_tests_run.dir/ExecutorTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Doctest_tests_run.dir/ExecutorTests.cpp.i"
	cd /home/elvina/avs4sem-master/lab02/build/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elvina/avs4sem-master/lab02/unittest/ExecutorTests.cpp > CMakeFiles/Doctest_tests_run.dir/ExecutorTests.cpp.i

unittest/CMakeFiles/Doctest_tests_run.dir/ExecutorTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Doctest_tests_run.dir/ExecutorTests.cpp.s"
	cd /home/elvina/avs4sem-master/lab02/build/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elvina/avs4sem-master/lab02/unittest/ExecutorTests.cpp -o CMakeFiles/Doctest_tests_run.dir/ExecutorTests.cpp.s

# Object files for target Doctest_tests_run
Doctest_tests_run_OBJECTS = \
"CMakeFiles/Doctest_tests_run.dir/DecoderTests.cpp.o" \
"CMakeFiles/Doctest_tests_run.dir/ExecutorTests.cpp.o"

# External object files for target Doctest_tests_run
Doctest_tests_run_EXTERNAL_OBJECTS =

unittest/Doctest_tests_run: unittest/CMakeFiles/Doctest_tests_run.dir/DecoderTests.cpp.o
unittest/Doctest_tests_run: unittest/CMakeFiles/Doctest_tests_run.dir/ExecutorTests.cpp.o
unittest/Doctest_tests_run: unittest/CMakeFiles/Doctest_tests_run.dir/build.make
unittest/Doctest_tests_run: src/libriscv_lib.a
unittest/Doctest_tests_run: unittest/CMakeFiles/Doctest_tests_run.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/elvina/avs4sem-master/lab02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Doctest_tests_run"
	cd /home/elvina/avs4sem-master/lab02/build/unittest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Doctest_tests_run.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/CMakeFiles/Doctest_tests_run.dir/build: unittest/Doctest_tests_run

.PHONY : unittest/CMakeFiles/Doctest_tests_run.dir/build

unittest/CMakeFiles/Doctest_tests_run.dir/clean:
	cd /home/elvina/avs4sem-master/lab02/build/unittest && $(CMAKE_COMMAND) -P CMakeFiles/Doctest_tests_run.dir/cmake_clean.cmake
.PHONY : unittest/CMakeFiles/Doctest_tests_run.dir/clean

unittest/CMakeFiles/Doctest_tests_run.dir/depend:
	cd /home/elvina/avs4sem-master/lab02/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elvina/avs4sem-master/lab02 /home/elvina/avs4sem-master/lab02/unittest /home/elvina/avs4sem-master/lab02/build /home/elvina/avs4sem-master/lab02/build/unittest /home/elvina/avs4sem-master/lab02/build/unittest/CMakeFiles/Doctest_tests_run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/CMakeFiles/Doctest_tests_run.dir/depend
