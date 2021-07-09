cmake_minimum_required(VERSION 3.0)

project(test)

set(CMAKE_CXX_COMPILER "/usr/bin/g++")
set(CMAKE_CXX_STANDARD 20)

set(CMAKE_PREFIX_PATH "/home/jamesf/Desktop/vcpkg/packages/")

# static library
find_package(range-v3 CONFIG REQUIRED)

# header-only library
add_library(tl-expected INTERFACE)
target_include_directories(tl-expected INTERFACE /home/jamesf/Desktop/vcpkg/packages/tl-expected_x64-linux/include/)

add_executable(AOC2020_Day9 AOC2020_Day9.cpp) 

target_link_libraries(AOC2020_Day9 range-v3)

target_link_libraries(AOC2020_Day9 tl-expected)
