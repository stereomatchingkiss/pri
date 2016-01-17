TBB_PATH = $$PWD/../3rdLibs/tbb/tbb44_20151115oss_win_0/tbb44_20151115oss

INCLUDEPATH += $${TBB_PATH}/include

LIB_SUFFIX = a

win32-msvc2013{

  LIB_SUFFIX = lib
  !contains(QMAKE_TARGET.arch, x86_64) {
        error("Do not support x86")        
   }else{
        message("tbb x64 build confirm")
        LIB_PATH = $$PWD/../3rdLibs/tbb/bin/vc2013_x86_amd64
   }  

} #win32 2013 end

win32-msvc2015{

  LIB_SUFFIX = lib
  !contains(QMAKE_TARGET.arch, x86_64) {
        error("Do not support x86")        
   }else{
        message("tbb x64 build confirm")
        LIB_PATH = $$PWD/../3rdLibs/tbb/bin/vc2015_x86_amd64
   }  

} #win32 2015 end

CONFIG(debug, debug|release) {
    LIBS += $${LIB_PATH}/debug/tbb_debug.lib
    LIBS += $${LIB_PATH}/debug/tbbmalloc_debug.lib
	LIBS += $${LIB_PATH}/debug/tbbmalloc_proxy_debug.lib
  } else {    
    LIBS += $${LIB_PATH}/release/tbb.lib
    LIBS += $${LIB_PATH}/release/tbbmalloc.lib
	LIBS += $${LIB_PATH}/release/tbbmalloc_proxy.lib
  } #config end
