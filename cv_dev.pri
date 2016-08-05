CV_PATH = $$PWD/../3rdLibs/opencv/dev

CV_LIB_VER = 310
LIB_SUFFIX = a

win32{
  CONFIG(debug, debug|release) {
    LIB_SUFFIX = d.lib
  } else {
    LIB_SUFFIX = .lib
  } #config end
}

win32-msvc2013{

  INCLUDEPATH += $${CV_PATH}/vc2013_64/install/include
  !contains(QMAKE_TARGET.arch, x86_64) {
     message("x86 build confirm")
     #LIB_PATH = $${CV_PATH}/vc2013_64/lib/Release
   }else{
     message("x86_64 build confirm")
     LIB_PATH = $${CV_PATH}/vc2013_64/install/x64/vc12/lib
   }    

} #win32-msvc2013 end

win32-msvc2015{

  INCLUDEPATH += $${CV_PATH}/vc2015_64/install/include
  !contains(QMAKE_TARGET.arch, x86_64) {
     message("x86 build confirm")
     LIB_PATH = $${CV_PATH}/vc2015_32/install/x86/vc14/lib
   }else{
     message("x86_64 build confirm")
     LIB_PATH = $${CV_PATH}/vc2015_64/install/x64/vc14/lib
   }

} #win32-msvc2015 end

#LIBS += $${LIB_PATH}/IlmImf$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/ippicvmt$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libjasper$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libjpeg$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libpng$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libprotobuf$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libtiff$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/zlib$${LIB_SUFFIX}

#LIBS += $${LIB_PATH}/opencv_aruco$${CV_LIB_VER}$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/opencv_bgsegm$${CV_LIB_VER}$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/opencv_bioinspired$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_core$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_calib3d$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_ccalib$${CV_LIB_VER}$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/opencv_dnn$${CV_LIB_VER}$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/opencv_dpm$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_features2d$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_flann$${CV_LIB_VER}$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/opencv_hdf$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_highgui$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_imgproc$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_imgcodecs$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_ml$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_imgcodecs$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_videoio$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_video$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_objdetect$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_ximgproc$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_img_hash$${CV_LIB_VER}$${LIB_SUFFIX}
