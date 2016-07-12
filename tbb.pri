TBB_PATH = $$PWD/../3rdLibs/tbb/tbb44_20151115oss_win_0/tbb44_20151115oss

INCLUDEPATH += $${TBB_PATH}/include

LIB_SUFFIX = a

win32-msvc2013{

  LIB_SUFFIX = lib
  !contains(QMAKE_TARGET.arch, x86_64) {
        error("Do not support x86")        
   }else{
        message("tbb x64 build confirm")
        LIB_PATH = $$PWD/../3rdLibs/tbb/tbb44_20160413oss/lib/intel64/vc12
   }  

} #win32 2013 end

win32-msvc2015{

  LIB_SUFFIX = lib
  !contains(QMAKE_TARGET.arch, x86_64) {
        error("Do not support x86")        
   }else{
        message("tbb x64 build confirm")
        LIB_PATH = $$PWD/../3rdLibs/tbb/tbb44_20160413oss/lib/intel64/vc14
   }  

} #win32 2015 end

CONFIG(debug, debug|release) {
    LIBS += $${LIB_PATH}/tbb_debug.lib
    LIBS += $${LIB_PATH}/tbbmalloc_debug.lib
    LIBS += $${LIB_PATH}/tbbmalloc_proxy_debug.lib
  } else {    
    LIBS += $${LIB_PATH}/tbb.lib
    LIBS += $${LIB_PATH}/tbbmalloc.lib
    LIBS += $${LIB_PATH}/tbbmalloc_proxy.lib
  } #config end
