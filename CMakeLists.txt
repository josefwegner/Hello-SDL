cmake_minimum_required(VERSION 3.24)
project(Hello-SDL)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_FIND_DEBUG_MODE 1)

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

# Project files
set(SRC_FILES Main.cpp)

add_executable(${PROJECT_NAME} ${SRC_FILES})
target_link_libraries(${PROJECT_NAME} SDL2::SDL2)
