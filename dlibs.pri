DLIB_PATH = $$PWD/../3rdLibs/dlib/dlib-18.16

INCLUDEPATH += $${DLIB_PATH}

LIB_SUFFIX = a

win32-msvc*{

  LIB_SUFFIX = lib

  CONFIG(debug, debug|release) {
    LIBS += $${DLIB_PATH}/build_vc12_32/Debug/dlib.$${LIB_SUFFIX}
  } else {    
    LIBS += $${DLIB_PATH}/build_vc12_32/Release/dlib.$${LIB_SUFFIX}
  } #config end

} #win32 end
