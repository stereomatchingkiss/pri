PROTOBUF_PATH = $$PWD/../3rdLibs/protobuf

INCLUDEPATH += $${PROTOBUF_PATH}/src

LIB_SUFFIX = a

win32-msvc2015{

  LIB_SUFFIX = lib
  !contains(QMAKE_TARGET.arch, x86_64) {
        error("Do not support x86")        
   }else{
        message("tbb x64 build confirm")
        LIB_PATH = $${PROTOBUF_PATH}/cmake/vc2015_64
   }  

} #win32 2015 end

CONFIG(debug, debug|release) {
    LIBS += $${LIB_PATH}/Debug/libprotobufd.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/Debug/libprotobuf-lited.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/Debug/libprotocd.$${LIB_SUFFIX}
  } else {
    LIBS += $${LIB_PATH}/Release/libprotobuf.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/Release/libprotobuf-lite.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/Release/libprotoc.$${LIB_SUFFIX}
  } #config end
