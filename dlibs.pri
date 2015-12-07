DLIB_PATH = $$PWD/../3rdLibs/dlib/dlib-18.17

INCLUDEPATH += $${DLIB_PATH}

LIB_SUFFIX = a

win32-msvc*{

  LIB_SUFFIX = lib

  CONFIG(debug, debug|release) {
    LIBS += $${DLIB_PATH}/dlib-18.17/bin/vc2015_x86_amd64/release/dlib.$${LIB_SUFFIX}
  } else {    
    LIBS += $${DLIB_PATH}/dlib-18.17/bin/vc2015_x86_amd64/release/dlib.$${LIB_SUFFIX}
  } #config end

} #win32 end
