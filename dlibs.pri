DLIB_PATH = $$PWD/../3rdLibs/dlib/dlib-18.18

INCLUDEPATH += $${DLIB_PATH}

LIB_SUFFIX = a

win32-msvc2015{

  LIB_SUFFIX = lib   

  CONFIG(debug, debug|release) {
    LIBS += $${DLIB_PATH}/bin/vc2015_x86_amd64/debug/dlib.$${LIB_SUFFIX}
  } else {    
    LIBS += $${DLIB_PATH}/bin/vc2015_x86_amd64/release/dlib.$${LIB_SUFFIX}
  } #config end

} #win32 end
