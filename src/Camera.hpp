#ifndef CAMERA_H
#define CAMERA_H

#include "glm/ext/vector_float3.hpp"
#include <glad/glad.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

struct CollisionInfo {
    bool collisionX;
    bool collisionZ;
};

// Defines several possible options for camera movement. Used as abstraction to stay away from window-system specific input methods
enum Camera_Movement {
    FORWARD,
    BACKWARD,
    LEFT,
    RIGHT
};

// Default camera values
const float YAW         = -90.0f;
const float PITCH       =  0.0f;
const float SPEED       =  2.5f;
const float SENSITIVITY =  0.1f;
const float ZOOM        =  45.0f;


// An abstract camera class that processes input and calculates the corresponding Euler Angles, Vectors and Matrices for use in OpenGL
class Camera
{
public:
    // camera Attributes
    glm::vec3 Position;
    glm::vec3 Front;
    glm::vec3 Up;
    glm::vec3 Right;
    glm::vec3 WorldUp;
    // euler Angles
    float Yaw;
    float Pitch;
    // camera options
    float MovementSpeed;
    float MouseSensitivity;
    float Zoom;
    float collisionMargin;

    // constructor with vectors
    Camera(glm::vec3 position = glm::vec3(0.0f, 0.0f, 0.0f), glm::vec3 up = glm::vec3(0.0f, 1.0f, 0.0f), float yaw = YAW, float pitch = PITCH, float margin = 0.12f) 
        : Front(glm::vec3(0.0f, 0.0f, -1.0f)), MovementSpeed(SPEED), MouseSensitivity(SENSITIVITY), Zoom(ZOOM), collisionMargin(margin) {
        Position = position;
        WorldUp = up;
        Yaw = yaw;
        Pitch = pitch;
        updateCameraVectors();
    }
    // constructor with scalar values
    Camera(float posX, float posY, float posZ, float upX, float upY, float upZ, float yaw, float pitch, float margin = 0.12f) 
        : Front(glm::vec3(0.0f, 0.0f, -1.0f)), MovementSpeed(SPEED), MouseSensitivity(SENSITIVITY), Zoom(ZOOM), collisionMargin(margin) {
        Position = glm::vec3(posX, posY, posZ);
        WorldUp = glm::vec3(upX, upY, upZ);
        Yaw = yaw;
        Pitch = pitch;
        updateCameraVectors();
    }

    // returns the view matrix calculated using Euler Angles and the LookAt Matrix
    glm::mat4 GetViewMatrix()
    {
        return glm::lookAt(Position, Position + Front, Up);
    }

    // processes input received from any keyboard-like input system. Accepts input parameter in the form of camera defined ENUM (to abstract it from windowing systems)
    void ProcessKeyboard(Camera_Movement direction, float deltaTime, const int maze[10][10], int mazeWidth, int mazeHeight, float tileSize)
    {
        float velocity = MovementSpeed * deltaTime;
        glm::vec3 horizontalFront = glm::normalize(glm::vec3(Front.x, 0.0f, Front.z));  // Movement only in the XZ plane
        glm::vec3 newPosition = Position;

        if (direction == FORWARD)
            newPosition += horizontalFront * velocity;
        if (direction == BACKWARD)
            newPosition -= horizontalFront * velocity;
        if (direction == LEFT)
            newPosition -= Right * velocity;
        if (direction == RIGHT)
            newPosition += Right * velocity;
        // Check for collisions before updating the position
        CollisionInfo collisionResult = CheckCollision(newPosition, maze, mazeWidth, mazeHeight, tileSize);
        if (collisionResult.collisionX && collisionResult.collisionZ) {
            return;
        }
        if (collisionResult.collisionX) {
            Position = glm::vec3(Position.x, newPosition.y, newPosition.z);
        }
        else if (collisionResult.collisionZ) {
            Position = glm::vec3(newPosition.x, newPosition.y, Position.z);
        }
        else {
            Position = newPosition;
        }
    }

    // processes input received from a mouse input system. Expects the offset value in both the x and y direction.
    void ProcessMouseMovement(float xoffset, float yoffset, GLboolean constrainPitch = true)
    {
        xoffset *= MouseSensitivity;
        yoffset *= MouseSensitivity;

        Yaw   += xoffset;
        Pitch += yoffset;

        // make sure that when pitch is out of bounds, screen doesn't get flipped
        if (constrainPitch)
        {
            if (Pitch > 89.0f)
                Pitch = 89.0f;
            if (Pitch < -89.0f)
                Pitch = -89.0f;
        }

        // update Front, Right and Up Vectors using the updated Euler angles
        updateCameraVectors();
    }

    // processes input received from a mouse scroll-wheel event. Only requires input on the vertical wheel-axis
    void ProcessMouseScroll(float yoffset)
    {
        Zoom -= (float)yoffset;
        if (Zoom < 1.0f)
            Zoom = 1.0f;
        if (Zoom > 45.0f)
            Zoom = 45.0f;
    }

private:
    // calculates the front vector from the Camera's (updated) Euler Angles
    void updateCameraVectors()
    {
        // calculate the new Front vector
        glm::vec3 front;
        front.x = cos(glm::radians(Yaw)) * cos(glm::radians(Pitch));
        front.y = sin(glm::radians(Pitch));
        front.z = sin(glm::radians(Yaw)) * cos(glm::radians(Pitch));
        Front = glm::normalize(front);
        // also re-calculate the Right and Up vector
        Right = glm::normalize(glm::cross(Front, WorldUp));  // normalize the vectors, because their length gets closer to 0 the more you look up or down which results in slower movement.
        Up    = glm::normalize(glm::cross(Right, Front));
    }

    CollisionInfo CheckCollision(glm::vec3 newPosition, const int maze[10][10], int mazeWidth, int mazeHeight, float tileSize) {
        // Convert the player's new position to maze grid coordinates
        int x = static_cast<int>((newPosition.x + collisionMargin) / tileSize);
        int z = static_cast<int>((newPosition.z + collisionMargin) / tileSize);
        int xMinus = static_cast<int>((newPosition.x - collisionMargin) / tileSize);
        int zMinus = static_cast<int>((newPosition.z - collisionMargin) / tileSize);

        CollisionInfo info = { false, false };

        // Check if the new position is within the bounds of the maze
        if (x >= 0 && x < mazeWidth && z >= 0 && z < mazeHeight && xMinus >= 0 && xMinus < mazeWidth && zMinus >= 0 && zMinus < mazeHeight) {
            // Check for X axis collisions
            if (maze[static_cast<int>(newPosition.z / tileSize)][x] == 1 || maze[static_cast<int>(newPosition.z / tileSize)][xMinus] == 1) {
                info.collisionX = true;
            }

            // Check for Z axis collisions
            if (maze[z][static_cast<int>(newPosition.x / tileSize)] == 1 || maze[zMinus][static_cast<int>(newPosition.x / tileSize)] == 1) {
                info.collisionZ = true;
            }
        } else {
            info.collisionX = true; // If out of bounds, treat as collision
            info.collisionZ = true; // If out of bounds, treat as collision
        }

        return info;
    }

   

};
#endif
