write detailed instructions for installing packages

git clone https://github.com/Microsoft/vcpkg.git // download vcpkg

cd vcpkg

./bootstrap-vcpkg.sh                             // install vcpkg

./vcpkg integrate install                        // =>
"-DCMAKE_TOOLCHAIN_FILE=/home/jamesf/Desktop/vcpkg/scripts/buildsystems/vcpkg.cmake"

./vcpkg install range-v3

./vcpkg list                                     // => range-v3

cmake
-DCMAKE_TOOLCHAIN_FILE=/home/jamesf/Desktop/vcpkg/scripts/buildsystems/vcpkg.cmake

make

./main

//

cmake
"-DCMAKE_TOOLCHAIN_FILE=/home/jamesf/Desktop/vcpkg/scripts/buildsystems/vcpkg.cmake"

cd "/home/jamesf/Desktop/c++ practice/AOC2020_Day9/" && g++ -Wall -Wextra
-Wpedantic -std=c++20 -O0 -g AOC2020_Day9.cpp -o AOC2020_Day9 && time
"/home/jamesf/Desktop/c++ practice/AOC2020_Day9/"AOC2020_Day9 && rm
"/home/jamesf/Desktop/c++ practice/AOC2020_Day9/"AOC2020_Day9

//

audio application library

follow a tutorial

https://juce.com/learn/tutorials

which audio application should I try out?

//

git 

https://github.com/commitizen/cz-cli

clang format styles?

homebrew
husky


