cmake_minimum_required(VERSION 3.14)
project(myapp)

set(CMAKE_CXX_STANDARD 14)

find_package(OpenGL REQUIRED)
find_package(glfw3 3.3 REQUIRED)
find_package(glm REQUIRED)

add_subdirectory(glad/)

add_executable(myapp
        src/main.cpp)

target_link_libraries(myapp ${OPENGL_LIBRARIES} ${GLEW_LIBRARIES})
target_link_libraries(myapp glfw)
target_link_libraries(myapp glad)
target_link_libraries(myapp glm)
