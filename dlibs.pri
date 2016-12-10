DLIB_PATH = $$PWD/../3rdLibs/dlib/dlib

INCLUDEPATH += $${DLIB_PATH}

LIB_SUFFIX = a

win32-msvc2015{

  LIB_SUFFIX = .lib

  CONFIG(debug, debug|release) {
    LIB_PATH = $${DLIB_PATH}/vc2015_64/dlib/Debug
  } else {
    contains(DEFINES, DLIB_USE_CUDA) {
      LIB_PATH = $${DLIB_PATH}/vc2015_64/dlib/Release
    } else {
      LIB_PATH = $${DLIB_PATH}/vc2015_64/dlib/ReleaseCpu
    }
  } #config end

}

win32-msvc2013{

  LIB_SUFFIX = lib

  CONFIG(debug, debug|release) {
    LIB_PATH = $${DLIB_PATH}/vc2013_64/dlib/Debug
  } else {
    LIB_PATH = $${DLIB_PATH}/vc2013_64/dlib/Release
  } #config end

} #win32 end

win32{
    LIBS += $${LIB_PATH}/dlib$${LIB_SUFFIX}
}

linux-g++ {
    CONFIG(debug, debug|release) {
        #LIB_PATH = $${DLIB_PATH}/vc2013_64/dlib/Debug
    } else {
        LIB_PATH = $${DLIB_PATH}/gcc_linux/dlib
    } #config end
    LIBS += -pthread
    LIBS += $${LIB_PATH}/libdlib.a
} #linux-g++ end

unix{
    LIBS += -lX11
    LIBS += -lXext
}
