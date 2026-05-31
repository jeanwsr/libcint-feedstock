@ECHO ON

cmake %CMAKE_ARGS% ^
  -G "Ninja" ^
  -S %SRC_DIR% ^
  -B build ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DCMAKE_C_FLAGS="%CFLAGS%" ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -DCMAKE_INSTALL_LIBDIR=lib ^
  -DBUILD_SHARED_LIBS=ON ^


cmake --build build --parallel %CPU_COUNT% --verbose
cmake --install build
