CV_PATH = $$PWD/../3rdLibs/opencv/opencv-3.0.0/build

INCLUDEPATH += $${CV_PATH}/include

LIB_SUFFIX = a

win32-msvc2013{

  LIB_SUFFIX = lib  
  !contains(QMAKE_TARGET.arch, x86_64) {
        message("x86 build confirm")
        LIB_PATH = $${CV_PATH}/x86/vc12/lib
   }else{
        message("x86_64 build confirm")
        LIB_PATH = $${CV_PATH}/x64/vc12/lib		
   }  

  CONFIG(debug, debug|release) {
    LIBS += $${LIB_PATH}/opencv_world300d.$${LIB_SUFFIX} 
  } else {    
    LIBS += $${LIB_PATH}/opencv_world300.$${LIB_SUFFIX}		
  } #config end

} #win32 end
