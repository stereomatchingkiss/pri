CV_LIB_VER = 330
LIB_SUFFIX = a

win32{
  CV_PATH = $$PWD/../3rdLibs/opencv/dev
  CONFIG(debug, debug|release) {
    LIB_SUFFIX = d.lib
  } else {
    LIB_SUFFIX = .lib
  } #config end
}

win32-msvc2015{

  INCLUDEPATH += $${CV_PATH}/vc2015_64/install/include
  !contains(QMAKE_TARGET.arch, x86_64) {
     message("x86 build confirm")
     CV_LIB_PATH = $${CV_PATH}/vc2015_32/install/x86/vc14/lib
   }else{
     message("x86_64 build confirm")
     CV_LIB_PATH = $${CV_PATH}/vc2015_64/install/x64/vc14/lib
   }

} #win32-msvc2015 end

win32{

#LIBS += $${LIB_PATH}/IlmImf$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/ippicvmt$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libjasper$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libjpeg$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libpng$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libprotobuf$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/libtiff$${LIB_SUFFIX}
#LIBS += $${LIB_PATH}/zlib$${LIB_SUFFIX}

#LIBS += $${CV_LIB_PATH}/opencv_aruco$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_bgsegm$${CV_LIB_VER}$${LIB_SUFFIX}
#LIBS += $${CV_LIB_PATH}/opencv_bioinspired$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_core$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_calib3d$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_ccalib$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_dnn$${CV_LIB_VER}$${LIB_SUFFIX}
#LIBS += $${CV_LIB_PATH}/opencv_dpm$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_features2d$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_flann$${CV_LIB_VER}$${LIB_SUFFIX}
#LIBS += $${CV_LIB_PATH}/opencv_hdf$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_highgui$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_imgproc$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_imgcodecs$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_ml$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_imgcodecs$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_stitching$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_videoio$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_video$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_objdetect$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_tracking$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_xfeatures2d$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_ximgproc$${CV_LIB_VER}$${LIB_SUFFIX}
LIBS += $${CV_LIB_PATH}/opencv_img_hash$${CV_LIB_VER}$${LIB_SUFFIX}

}

linux: android:{

#CV_PATH = $$PWD/../3rdLibs/opencv/dev/android_no_carotene/install/sdk/native
CV_PATH = $$PWD/../3rdLibs/opencv/dev/android_tbb/install/sdk/native
#CV_PATH = $$PWD/../3rdLibs/opencv/cv_3_3_no_carotene/install/sdk/native
INCLUDEPATH += $${CV_PATH}/jni/include

OPENCV_3RD_LIBS = $${CV_PATH}/3rdparty/libs/armeabi-v7a
CV_LIB_PATH = $${CV_PATH}/libs/armeabi-v7a

LIBS += $${CV_LIB_PATH}/libopencv_world.a

LIBS += $${OPENCV_3RD_LIBS}/liblibtiff.a
LIBS += $${OPENCV_3RD_LIBS}/liblibjpeg.a
LIBS += $${OPENCV_3RD_LIBS}/liblibjasper.a
LIBS += $${OPENCV_3RD_LIBS}/liblibpng.a
LIBS += $${OPENCV_3RD_LIBS}/libIlmImf.a

LIBS += $${OPENCV_3RD_LIBS}/libcpufeatures.a
LIBS += $${OPENCV_3RD_LIBS}/libtegra_hal.a
LIBS += $${OPENCV_3RD_LIBS}/liblibwebp.a
LIBS += $${OPENCV_3RD_LIBS}/liblibprotobuf.a
LIBS += $${OPENCV_3RD_LIBS}/libtbb.a

}


linux-g++ {   
   INCLUDEPATH += /usr/local/include
   contains(DEFINES, OPENCV_USE_CUDA) {
      LIBS += -L/usr/local/cuda-8.0/lib64 -lcuda -lcudart -lcurand -lcublas -lcudnn
   }

   LIBS += -L/usr/lib -llapack -lblas

   LIBS += -L/usr/local/lib -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_imgcodecs
   LIBS += -L/usr/local/lib -lopencv_img_hash
}
