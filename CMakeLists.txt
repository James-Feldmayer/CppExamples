cmake_minimum_required(VERSION 3.0)

set(CMAKE_CXX_COMPILER "/usr/bin/g++-11.1.0")
set(CMAKE_CXX_STANDARD 20)

project(test)

find_package(range-v3 CONFIG REQUIRED)

add_executable(main AOC2020_Day9.cpp)

target_link_libraries(main PRIVATE range-v3)
