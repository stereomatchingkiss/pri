TBB_PATH = $$PWD/../3rdLibs/tbb/tbb43_20150611oss_win/tbb43_20150611oss

INCLUDEPATH += $${TBB_PATH}/include

LIB_SUFFIX = a

win32-msvc2013{

  LIB_SUFFIX = lib
  !contains(QMAKE_TARGET.arch, x86_64) {
        message("x86 build confirm")
        LIB_PATH = $${TBB_PATH}/lib/ia32/vc12
   }else{
        message("x86_64 build confirm")
        LIB_PATH = $${TBB_PATH}/lib/intel64/vc12
   }

  CONFIG(debug, debug|release) {
    LIBS += $${LIB_PATH}/tbb_debug.lib
    LIBS += $${LIB_PATH}/tbbmalloc_debug.lib
  } else {    
    LIBS += $${LIB_PATH}/tbb.lib
    LIBS += $${LIB_PATH}/tbbmalloc.lib
  } #config end

} #win32 end
