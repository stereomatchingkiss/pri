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
     LIB_PATH = $${QWT_PATH}/vc2015_32/lib
   }else{
     message("x86_64 build confirm")
     LIB_PATH = $${QWT_PATH}/vc2015_64/lib
   }

   LIBS += $${LIB_PATH}/qwt$${LIB_SUFFIX}
} #win32-msvc2015 end

linux-g++ {
  LIB_PATH = $${QWT_PATH}/qwt-6.1.3/lib
  LIBS += $${LIB_PATH}/libqwt.$${LIB_SUFFIX}
}
