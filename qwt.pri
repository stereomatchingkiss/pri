QWT_PATH = $$PWD/../3rdLibs/qwt

LIB_SUFFIX = a

win32{
  CONFIG(debug, debug|release) {
    LIB_SUFFIX = d.lib
  } else {
    LIB_SUFFIX = .lib
  } #config end
}

INCLUDEPATH += $${QWT_PATH}/qwt-6.1.3/src

win32-msvc2015{  
  !contains(QMAKE_TARGET.arch, x86_64) {
     message("x86 build confirm")
     #LIB_PATH = $${QWT_PATH}/vc2015_64/install/x64/vc14/lib
   }else{
     message("x86_64 build confirm")
     LIB_PATH = $${QWT_PATH}/vc2015_64/lib
   }

} #win32-msvc2015 end


LIBS += $${LIB_PATH}/qwt$${LIB_SUFFIX}
