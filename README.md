# OpenGL Maze Game

This project is a simple 3D maze game implemented using OpenGL. The player navigates through a maze using a first-person camera, which includes collision detection to prevent walking through walls.

## Features

- **3D First-Person Camera**: Move around the maze with a first-person view.
- **Collision Detection**: Prevents the player from walking through walls.
- **Basic Maze Rendering**: Displays a simple maze using textured quads.

## Prerequisites

- OpenGL
- GLFW
- GLEW
- GLM (OpenGL Mathematics)
- STB Image (for texture loading)

## Project Structure

├── include
│ ├── Camera.h
│ └── Shader.h
├── src
│ ├── main.cpp
│ ├── Camera.cpp
│ ├── Shader.cpp
├── shaders
│ ├── vertex_shader.glsl
│ └── fragment_shader.glsl
├── assets
│ └── container.jpg
├── README.md
└── CMakeLists.txt

## Building the Project

### Using CMake

1. **Install CMake**: Ensure CMake is installed on your system.
2. **Generate Build Files**:
    ```bash
    mkdir build
    cd build
    cmake ..
    ```
3. **Build the Project**:
    ```bash
    make
    ```

## Running the Project

After building the project, you can run the executable generated in the `build` directory.

```bash
./OpenGLMazeGame
```

## Controls
W - Move forward
S - Move backward
A - Move left
D - Move right
Mouse - Look around
ESC - Exit the game
