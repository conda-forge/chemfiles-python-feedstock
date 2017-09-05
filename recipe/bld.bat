mkdir build
cd build

cmake -G "%CMAKE_GENERATOR%" -DCMAKE_INSTALL_PREFIX="" .. || exit /b
cmake --build . --config Release || exit /b
ctest -C Release || exit /b
cmake --build . --config Release --target install || exit /b
