# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_SOURCE_DIR = /home/roger/Documents/programming/maze-opengl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/roger/Documents/programming/maze-opengl/build

# Include any dependencies generated for this target.
include CMakeFiles/OpenGLTutorial.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/OpenGLTutorial.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenGLTutorial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenGLTutorial.dir/flags.make

CMakeFiles/OpenGLTutorial.dir/src/main.cpp.o: CMakeFiles/OpenGLTutorial.dir/flags.make
CMakeFiles/OpenGLTutorial.dir/src/main.cpp.o: /home/roger/Documents/programming/maze-opengl/src/main.cpp
CMakeFiles/OpenGLTutorial.dir/src/main.cpp.o: CMakeFiles/OpenGLTutorial.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/roger/Documents/programming/maze-opengl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenGLTutorial.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGLTutorial.dir/src/main.cpp.o -MF CMakeFiles/OpenGLTutorial.dir/src/main.cpp.o.d -o CMakeFiles/OpenGLTutorial.dir/src/main.cpp.o -c /home/roger/Documents/programming/maze-opengl/src/main.cpp

CMakeFiles/OpenGLTutorial.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGLTutorial.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roger/Documents/programming/maze-opengl/src/main.cpp > CMakeFiles/OpenGLTutorial.dir/src/main.cpp.i

CMakeFiles/OpenGLTutorial.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGLTutorial.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roger/Documents/programming/maze-opengl/src/main.cpp -o CMakeFiles/OpenGLTutorial.dir/src/main.cpp.s

CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.o: CMakeFiles/OpenGLTutorial.dir/flags.make
CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.o: /home/roger/Documents/programming/maze-opengl/src/Shader.cpp
CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.o: CMakeFiles/OpenGLTutorial.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/roger/Documents/programming/maze-opengl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.o -MF CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.o.d -o CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.o -c /home/roger/Documents/programming/maze-opengl/src/Shader.cpp

CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roger/Documents/programming/maze-opengl/src/Shader.cpp > CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.i

CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roger/Documents/programming/maze-opengl/src/Shader.cpp -o CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.s

CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.o: CMakeFiles/OpenGLTutorial.dir/flags.make
CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.o: /home/roger/Documents/programming/maze-opengl/src/stb_image.cpp
CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.o: CMakeFiles/OpenGLTutorial.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/roger/Documents/programming/maze-opengl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.o -MF CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.o.d -o CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.o -c /home/roger/Documents/programming/maze-opengl/src/stb_image.cpp

CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roger/Documents/programming/maze-opengl/src/stb_image.cpp > CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.i

CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roger/Documents/programming/maze-opengl/src/stb_image.cpp -o CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.s

# Object files for target OpenGLTutorial
OpenGLTutorial_OBJECTS = \
"CMakeFiles/OpenGLTutorial.dir/src/main.cpp.o" \
"CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.o" \
"CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.o"

# External object files for target OpenGLTutorial
OpenGLTutorial_EXTERNAL_OBJECTS =

OpenGLTutorial: CMakeFiles/OpenGLTutorial.dir/src/main.cpp.o
OpenGLTutorial: CMakeFiles/OpenGLTutorial.dir/src/Shader.cpp.o
OpenGLTutorial: CMakeFiles/OpenGLTutorial.dir/src/stb_image.cpp.o
OpenGLTutorial: CMakeFiles/OpenGLTutorial.dir/build.make
OpenGLTutorial: libglad.a
OpenGLTutorial: /usr/lib/libglfw.so.3.4
OpenGLTutorial: CMakeFiles/OpenGLTutorial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/roger/Documents/programming/maze-opengl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable OpenGLTutorial"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenGLTutorial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenGLTutorial.dir/build: OpenGLTutorial
.PHONY : CMakeFiles/OpenGLTutorial.dir/build

CMakeFiles/OpenGLTutorial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenGLTutorial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenGLTutorial.dir/clean

CMakeFiles/OpenGLTutorial.dir/depend:
	cd /home/roger/Documents/programming/maze-opengl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/roger/Documents/programming/maze-opengl /home/roger/Documents/programming/maze-opengl /home/roger/Documents/programming/maze-opengl/build /home/roger/Documents/programming/maze-opengl/build /home/roger/Documents/programming/maze-opengl/build/CMakeFiles/OpenGLTutorial.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/OpenGLTutorial.dir/depend

