mkdir build
cd build

cmake -G "%CMAKE_GENERATOR%" -DCMAKE_INSTALL_PREFIX="" ..
cmake --build . --config Release --target all
ctest -C Release
cmake --build . --config Release --target install
