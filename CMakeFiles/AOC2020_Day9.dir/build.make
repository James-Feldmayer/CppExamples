# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_SOURCE_DIR = "/home/jamesf/Desktop/c++ practice/AOC2020_Day9"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/jamesf/Desktop/c++ practice/AOC2020_Day9"

# Include any dependencies generated for this target.
include CMakeFiles/AOC2020_Day9.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/AOC2020_Day9.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AOC2020_Day9.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AOC2020_Day9.dir/flags.make

CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.o: CMakeFiles/AOC2020_Day9.dir/flags.make
CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.o: AOC2020_Day9.cpp
CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.o: CMakeFiles/AOC2020_Day9.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/jamesf/Desktop/c++ practice/AOC2020_Day9/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.o -MF CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.o.d -o CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.o -c "/home/jamesf/Desktop/c++ practice/AOC2020_Day9/AOC2020_Day9.cpp"

CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/jamesf/Desktop/c++ practice/AOC2020_Day9/AOC2020_Day9.cpp" > CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.i

CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/jamesf/Desktop/c++ practice/AOC2020_Day9/AOC2020_Day9.cpp" -o CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.s

# Object files for target AOC2020_Day9
AOC2020_Day9_OBJECTS = \
"CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.o"

# External object files for target AOC2020_Day9
AOC2020_Day9_EXTERNAL_OBJECTS =

AOC2020_Day9: CMakeFiles/AOC2020_Day9.dir/AOC2020_Day9.cpp.o
AOC2020_Day9: CMakeFiles/AOC2020_Day9.dir/build.make
AOC2020_Day9: CMakeFiles/AOC2020_Day9.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/jamesf/Desktop/c++ practice/AOC2020_Day9/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AOC2020_Day9"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AOC2020_Day9.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AOC2020_Day9.dir/build: AOC2020_Day9
.PHONY : CMakeFiles/AOC2020_Day9.dir/build

CMakeFiles/AOC2020_Day9.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AOC2020_Day9.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AOC2020_Day9.dir/clean

CMakeFiles/AOC2020_Day9.dir/depend:
	cd "/home/jamesf/Desktop/c++ practice/AOC2020_Day9" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jamesf/Desktop/c++ practice/AOC2020_Day9" "/home/jamesf/Desktop/c++ practice/AOC2020_Day9" "/home/jamesf/Desktop/c++ practice/AOC2020_Day9" "/home/jamesf/Desktop/c++ practice/AOC2020_Day9" "/home/jamesf/Desktop/c++ practice/AOC2020_Day9/CMakeFiles/AOC2020_Day9.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/AOC2020_Day9.dir/depend

