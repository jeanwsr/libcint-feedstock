cmake ${CMAKE_ARGS} -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DBUILD_SHARED_LIBS=ON \
    -S. \
    -Bbuild \
    -G Ninja \
    -DWITH_F12=ON \
    -DWITH_RANGE_COULOMB=ON \
    -DWITH_COULOMB_ERF=ON
    

cmake --build build -j ${CPU_COUNT}
cmake --install build

