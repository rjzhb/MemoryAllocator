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
CMAKE_SOURCE_DIR = /home/rjzhb/Project/MemoryAllocator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rjzhb/Project/MemoryAllocator/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MemoryAllocator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MemoryAllocator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MemoryAllocator.dir/flags.make

CMakeFiles/MemoryAllocator.dir/main.cpp.o: CMakeFiles/MemoryAllocator.dir/flags.make
CMakeFiles/MemoryAllocator.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rjzhb/Project/MemoryAllocator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MemoryAllocator.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MemoryAllocator.dir/main.cpp.o -c /home/rjzhb/Project/MemoryAllocator/main.cpp

CMakeFiles/MemoryAllocator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MemoryAllocator.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rjzhb/Project/MemoryAllocator/main.cpp > CMakeFiles/MemoryAllocator.dir/main.cpp.i

CMakeFiles/MemoryAllocator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MemoryAllocator.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rjzhb/Project/MemoryAllocator/main.cpp -o CMakeFiles/MemoryAllocator.dir/main.cpp.s

CMakeFiles/MemoryAllocator.dir/src/allocator/firstfit_allocator.cpp.o: CMakeFiles/MemoryAllocator.dir/flags.make
CMakeFiles/MemoryAllocator.dir/src/allocator/firstfit_allocator.cpp.o: ../src/allocator/firstfit_allocator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rjzhb/Project/MemoryAllocator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MemoryAllocator.dir/src/allocator/firstfit_allocator.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MemoryAllocator.dir/src/allocator/firstfit_allocator.cpp.o -c /home/rjzhb/Project/MemoryAllocator/src/allocator/firstfit_allocator.cpp

CMakeFiles/MemoryAllocator.dir/src/allocator/firstfit_allocator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MemoryAllocator.dir/src/allocator/firstfit_allocator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rjzhb/Project/MemoryAllocator/src/allocator/firstfit_allocator.cpp > CMakeFiles/MemoryAllocator.dir/src/allocator/firstfit_allocator.cpp.i

CMakeFiles/MemoryAllocator.dir/src/allocator/firstfit_allocator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MemoryAllocator.dir/src/allocator/firstfit_allocator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rjzhb/Project/MemoryAllocator/src/allocator/firstfit_allocator.cpp -o CMakeFiles/MemoryAllocator.dir/src/allocator/firstfit_allocator.cpp.s

CMakeFiles/MemoryAllocator.dir/src/allocator/bestfit_allocator.cpp.o: CMakeFiles/MemoryAllocator.dir/flags.make
CMakeFiles/MemoryAllocator.dir/src/allocator/bestfit_allocator.cpp.o: ../src/allocator/bestfit_allocator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rjzhb/Project/MemoryAllocator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/MemoryAllocator.dir/src/allocator/bestfit_allocator.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MemoryAllocator.dir/src/allocator/bestfit_allocator.cpp.o -c /home/rjzhb/Project/MemoryAllocator/src/allocator/bestfit_allocator.cpp

CMakeFiles/MemoryAllocator.dir/src/allocator/bestfit_allocator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MemoryAllocator.dir/src/allocator/bestfit_allocator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rjzhb/Project/MemoryAllocator/src/allocator/bestfit_allocator.cpp > CMakeFiles/MemoryAllocator.dir/src/allocator/bestfit_allocator.cpp.i

CMakeFiles/MemoryAllocator.dir/src/allocator/bestfit_allocator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MemoryAllocator.dir/src/allocator/bestfit_allocator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rjzhb/Project/MemoryAllocator/src/allocator/bestfit_allocator.cpp -o CMakeFiles/MemoryAllocator.dir/src/allocator/bestfit_allocator.cpp.s

# Object files for target MemoryAllocator
MemoryAllocator_OBJECTS = \
"CMakeFiles/MemoryAllocator.dir/main.cpp.o" \
"CMakeFiles/MemoryAllocator.dir/src/allocator/firstfit_allocator.cpp.o" \
"CMakeFiles/MemoryAllocator.dir/src/allocator/bestfit_allocator.cpp.o"

# External object files for target MemoryAllocator
MemoryAllocator_EXTERNAL_OBJECTS =

MemoryAllocator: CMakeFiles/MemoryAllocator.dir/main.cpp.o
MemoryAllocator: CMakeFiles/MemoryAllocator.dir/src/allocator/firstfit_allocator.cpp.o
MemoryAllocator: CMakeFiles/MemoryAllocator.dir/src/allocator/bestfit_allocator.cpp.o
MemoryAllocator: CMakeFiles/MemoryAllocator.dir/build.make
MemoryAllocator: CMakeFiles/MemoryAllocator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rjzhb/Project/MemoryAllocator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable MemoryAllocator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MemoryAllocator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MemoryAllocator.dir/build: MemoryAllocator

.PHONY : CMakeFiles/MemoryAllocator.dir/build

CMakeFiles/MemoryAllocator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MemoryAllocator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MemoryAllocator.dir/clean

CMakeFiles/MemoryAllocator.dir/depend:
	cd /home/rjzhb/Project/MemoryAllocator/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rjzhb/Project/MemoryAllocator /home/rjzhb/Project/MemoryAllocator /home/rjzhb/Project/MemoryAllocator/cmake-build-debug /home/rjzhb/Project/MemoryAllocator/cmake-build-debug /home/rjzhb/Project/MemoryAllocator/cmake-build-debug/CMakeFiles/MemoryAllocator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MemoryAllocator.dir/depend

