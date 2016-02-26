!contains(QMAKE_TARGET.arch, x86_64) {
        error("Do not support x86")        
   }

win32-msvc2013{

  CONFIG(debug, debug|release) {
      message("lapack do not support debug build yet")
  }

  CONFIG(release, debug|release) {
      LAPACK_PATH = $$PWD/../3rdLibs/lapack/lapack-3.6.0
      LIB_PATH = $${LAPACK_PATH}/vc2013_64_build/lib
  }

  LIBS += $${LIB_PATH}/liblapack.a
} #win32 end
