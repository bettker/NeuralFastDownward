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
CMAKE_SOURCE_DIR = /home/ferber/repositories/DeePDown/pytorch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ferber/repositories/DeePDown/pytorch/build

# Include any dependencies generated for this target.
include CMakeFiles/example-app.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/example-app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/example-app.dir/flags.make

CMakeFiles/example-app.dir/example-app.cpp.o: CMakeFiles/example-app.dir/flags.make
CMakeFiles/example-app.dir/example-app.cpp.o: ../example-app.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ferber/repositories/DeePDown/pytorch/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/example-app.dir/example-app.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example-app.dir/example-app.cpp.o -c /home/ferber/repositories/DeePDown/pytorch/example-app.cpp

CMakeFiles/example-app.dir/example-app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example-app.dir/example-app.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ferber/repositories/DeePDown/pytorch/example-app.cpp > CMakeFiles/example-app.dir/example-app.cpp.i

CMakeFiles/example-app.dir/example-app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example-app.dir/example-app.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ferber/repositories/DeePDown/pytorch/example-app.cpp -o CMakeFiles/example-app.dir/example-app.cpp.s

# Object files for target example-app
example__app_OBJECTS = \
"CMakeFiles/example-app.dir/example-app.cpp.o"

# External object files for target example-app
example__app_EXTERNAL_OBJECTS =

example-app: CMakeFiles/example-app.dir/example-app.cpp.o
example-app: CMakeFiles/example-app.dir/build.make
example-app: /home/ferber/bin/libtorch/lib/libtorch.so
example-app: /home/ferber/bin/libtorch/lib/libc10.so
example-app: /home/ferber/bin/libtorch/lib/libc10.so
example-app: CMakeFiles/example-app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ferber/repositories/DeePDown/pytorch/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example-app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example-app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/example-app.dir/build: example-app

.PHONY : CMakeFiles/example-app.dir/build

CMakeFiles/example-app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/example-app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/example-app.dir/clean

CMakeFiles/example-app.dir/depend:
	cd /home/ferber/repositories/DeePDown/pytorch/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ferber/repositories/DeePDown/pytorch /home/ferber/repositories/DeePDown/pytorch /home/ferber/repositories/DeePDown/pytorch/build /home/ferber/repositories/DeePDown/pytorch/build /home/ferber/repositories/DeePDown/pytorch/build/CMakeFiles/example-app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/example-app.dir/depend

