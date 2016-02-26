!contains(QMAKE_TARGET.arch, x86_64) {
        error("Do not support x86")        
   }

win32-msvc2013{

  CONFIG(debug, debug|release) {
      message("lapack do not support debug build yet")
  }

  CONFIG(release, debug|release) {
      LIB_PATH = $$PWD/../3rdLibs/openBlas/OpenBLAS-v0.2.15-Win64-int32/lib
      LIBS += $${LIB_PATH}/openblas.lib
  }

} #win32 end
