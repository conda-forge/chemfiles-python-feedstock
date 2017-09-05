mkdir build
cd build

cmake -G "%CMAKE_GENERATOR%" .. || exit /b
cmake --build . --config Release || exit /b
ctest -C Release || exit /b
cmake --build . --config Release --target install || exit /b
