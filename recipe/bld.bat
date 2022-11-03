mkdir build && cd build
cmake ^
	-GNinja                                  ^
	-DCMAKE_BUILD_TYPE=Release               ^
	-DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX%     ^
	-DCMAKE_FIND_ROOT_PATH=%LIBRARY_PREFIX%  ^
	-DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%  ^
	-DBIN_INSTALL_DIR=%LIBRARY_BIN%     ^
	-DLIB_INSTALL_DIR=%LIBRARY_LIB%     ^
	-DINCLUDE_INSTALL_DIR=%LIBRARY_INC% ^
	-DSTATIC_CRT=off                    ^
        -DUSE_SSH=ON                        ^
	..

echo "Building..."
ninja -j%CPU_COUNT%
if errorlevel 1 exit /b 1

echo "Installing..."
ninja install || exit 1
if errorlevel 1 exit /b 1
