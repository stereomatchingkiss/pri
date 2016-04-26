CV_PATH = $$PWD/../3rdLibs/opencv/dev

INCLUDEPATH += $${CV_PATH}/vc2013_64/install/include

CV_LIB_VER = 310
LIB_SUFFIX = a

win32-msvc2013{

  LIB_SUFFIX = .lib
  !contains(QMAKE_TARGET.arch, x86_64) {
        message("x86 build confirm")
        #LIB_PATH = $${CV_PATH}/vc2013_64/lib/Release
   }else{
        message("x86_64 build confirm")
        LIB_PATH = $${CV_PATH}/vc2013_64/install/x64/vc12/lib
   }  

  CONFIG(debug, debug|release) {    
  } else {        	
  } #config end

} #win32 end

#LIBS += $${LIB_PATH}/IlmImf$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/ippicvmt$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libjasper$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libjpeg$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libpng$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libprotobuf$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libtiff$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/zlib$${LIB_SUFFIX}

LIBS += $${LIB_PATH}/opencv_core$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_dnn$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_features2d$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_hdf$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_highgui$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_imgproc$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_imgcodecs$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_ml$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_imgcodecs$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_videoio$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_video$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_objdetect$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${LIB_PATH}/opencv_ximgproc$${CV_LIB_VER}$${LIB_SUFFIX}
