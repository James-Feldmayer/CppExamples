cmake_minimum_required(VERSION 3.0)

set(CMAKE_CXX_COMPILER "/usr/bin/g++-11.1.0")
set(CMAKE_CXX_STANDARD 20)

project(test)

find_package(range-v3 CONFIG REQUIRED)

add_executable(window window.cpp) 

target_link_libraries(window PRIVATE range-v3)

add_executable(AOC2020_Day9 AOC2020_Day9.cpp) 

target_link_libraries(AOC2020_Day9 PRIVATE range-v3)
