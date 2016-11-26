INCLUDEPATH += $$PWD/../3rdLibs
SEETA_PATH = $$PWD/../3rdLibs/SeetaFaceEngine

LIB_SUFFIX = a

win32{
  CONFIG(debug, debug|release) {
    LIB_SUFFIX = d.lib
    DEBUG_VS_REL = Debug
  } else {
    LIB_SUFFIX = .lib
    DEBUG_VS_REL = Release
  } #config end
}

win32-msvc2015{

  INCLUDEPATH += $${CV_PATH}/vc2015_64/install/include
  !contains(QMAKE_TARGET.arch, x86_64) {
     message("x86 build confirm")
     LIB_TYPE = vc2015_32
   }else{
     message("x86_64 build confirm")
     LIB_TYPE = vc2015_64
   }

} #win32-msvc2015 end

LIBS += $${SEETA_PATH}/FaceAlignment/$${LIB_TYPE}/$${DEBUG_VS_REL}/seeta_fa_lib$${LIB_SUFFIX}
LIBS += $${SEETA_PATH}/FaceDetection/$${LIB_TYPE}/$${DEBUG_VS_REL}/seeta_facedet_lib$${LIB_SUFFIX}
LIBS += $${SEETA_PATH}/FaceIdentification/$${LIB_TYPE}/$${DEBUG_VS_REL}/viplnet$${LIB_SUFFIX}
