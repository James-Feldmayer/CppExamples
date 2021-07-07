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