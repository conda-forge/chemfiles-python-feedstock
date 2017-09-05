set -eu

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX ..
make
ctest
make install