SHARK_PATH = $$PWD/../3rdLibs/shark

INCLUDEPATH += $${SHARK_PATH}/include

LIB_SUFFIX = a

win32-msvc2013{

  LIB_SUFFIX = lib  
  !contains(QMAKE_TARGET.arch, x86_64) {
        message("x86 build do not support")
        LIB_PATH = $${SHARK_PATH}/lib
   }else{
        message("x86_64 build confirm")
        LIB_PATH = $${SHARK_PATH}/lib
   }  

  CONFIG(debug, debug|release) {
    LIBS += $${LIB_PATH}/Debug/shark_debug.$${LIB_SUFFIX} 
  } else {    
    LIBS += $${LIB_PATH}/Release/shark.$${LIB_SUFFIX}		
  } #config end

} #win32 end
