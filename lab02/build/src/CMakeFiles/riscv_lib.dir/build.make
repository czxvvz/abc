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
include src/CMakeFiles/riscv_lib.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/riscv_lib.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/riscv_lib.dir/flags.make

src/CMakeFiles/riscv_lib.dir/Instruction.cpp.o: src/CMakeFiles/riscv_lib.dir/flags.make
src/CMakeFiles/riscv_lib.dir/Instruction.cpp.o: ../src/Instruction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elvina/avs4sem-master/lab02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/riscv_lib.dir/Instruction.cpp.o"
	cd /home/elvina/avs4sem-master/lab02/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/riscv_lib.dir/Instruction.cpp.o -c /home/elvina/avs4sem-master/lab02/src/Instruction.cpp

src/CMakeFiles/riscv_lib.dir/Instruction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/riscv_lib.dir/Instruction.cpp.i"
	cd /home/elvina/avs4sem-master/lab02/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elvina/avs4sem-master/lab02/src/Instruction.cpp > CMakeFiles/riscv_lib.dir/Instruction.cpp.i

src/CMakeFiles/riscv_lib.dir/Instruction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/riscv_lib.dir/Instruction.cpp.s"
	cd /home/elvina/avs4sem-master/lab02/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elvina/avs4sem-master/lab02/src/Instruction.cpp -o CMakeFiles/riscv_lib.dir/Instruction.cpp.s

src/CMakeFiles/riscv_lib.dir/main.cpp.o: src/CMakeFiles/riscv_lib.dir/flags.make
src/CMakeFiles/riscv_lib.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elvina/avs4sem-master/lab02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/riscv_lib.dir/main.cpp.o"
	cd /home/elvina/avs4sem-master/lab02/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/riscv_lib.dir/main.cpp.o -c /home/elvina/avs4sem-master/lab02/src/main.cpp

src/CMakeFiles/riscv_lib.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/riscv_lib.dir/main.cpp.i"
	cd /home/elvina/avs4sem-master/lab02/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elvina/avs4sem-master/lab02/src/main.cpp > CMakeFiles/riscv_lib.dir/main.cpp.i

src/CMakeFiles/riscv_lib.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/riscv_lib.dir/main.cpp.s"
	cd /home/elvina/avs4sem-master/lab02/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elvina/avs4sem-master/lab02/src/main.cpp -o CMakeFiles/riscv_lib.dir/main.cpp.s

# Object files for target riscv_lib
riscv_lib_OBJECTS = \
"CMakeFiles/riscv_lib.dir/Instruction.cpp.o" \
"CMakeFiles/riscv_lib.dir/main.cpp.o"

# External object files for target riscv_lib
riscv_lib_EXTERNAL_OBJECTS =

src/libriscv_lib.a: src/CMakeFiles/riscv_lib.dir/Instruction.cpp.o
src/libriscv_lib.a: src/CMakeFiles/riscv_lib.dir/main.cpp.o
src/libriscv_lib.a: src/CMakeFiles/riscv_lib.dir/build.make
src/libriscv_lib.a: src/CMakeFiles/riscv_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/elvina/avs4sem-master/lab02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libriscv_lib.a"
	cd /home/elvina/avs4sem-master/lab02/build/src && $(CMAKE_COMMAND) -P CMakeFiles/riscv_lib.dir/cmake_clean_target.cmake
	cd /home/elvina/avs4sem-master/lab02/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/riscv_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/riscv_lib.dir/build: src/libriscv_lib.a

.PHONY : src/CMakeFiles/riscv_lib.dir/build

src/CMakeFiles/riscv_lib.dir/clean:
	cd /home/elvina/avs4sem-master/lab02/build/src && $(CMAKE_COMMAND) -P CMakeFiles/riscv_lib.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/riscv_lib.dir/clean

src/CMakeFiles/riscv_lib.dir/depend:
	cd /home/elvina/avs4sem-master/lab02/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elvina/avs4sem-master/lab02 /home/elvina/avs4sem-master/lab02/src /home/elvina/avs4sem-master/lab02/build /home/elvina/avs4sem-master/lab02/build/src /home/elvina/avs4sem-master/lab02/build/src/CMakeFiles/riscv_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/riscv_lib.dir/depend

