!contains(QMAKE_TARGET.arch, x86_64) {
        error("Do not support x86")        
   }

LAPACK_PATH = $$PWD/../3rdLibs/lapack/lapack-3.5.0/bin)
BLAS_PATH = $$PWD/../3rdLibs/openBlas/bin)

LIB_SUFFIX = a

win32-msvc*{

LIB_SUFFIX = lib

}

CONFIG(debug, debug|release) {
    error("Lapack and Blas Do not support debug build")
  } else { 
    target_link_libraries(${PROJECT_NAME} ${LAPACK_PATH}/vc2015_x86_amd64/release/liblapack.lib)  
    LIBS += $${BLAS_PATH}/libopenblas.dll.a
    LIBS += $${LAPACK_PATH}/release/vc2015_x86_amd64/release/liblapack.$${LIB_SUFFIX}
  } #config end
