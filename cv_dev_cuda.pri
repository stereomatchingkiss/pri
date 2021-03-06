CV_PATH = $$PWD/../3rdLibs/opencv/dev/build_vc12_tbb_contribute_cuda/install

INCLUDEPATH += $${CV_PATH}/include

LIB_SUFFIX = a

win32-msvc2013{

  LIB_SUFFIX = lib  
  !contains(QMAKE_TARGET.arch, x86_64) {
        message("opencv x86 build confirm")
        LIB_PATH = $${CV_PATH}/x86/vc12/lib
   }else{
        message("opencv x64 build confirm")
        LIB_PATH = $${CV_PATH}/x64/vc12/lib
   }

  CONFIG(debug, debug|release) {    
  } else {    
        LIBS += $${LIB_PATH}/opencv_core300.$${LIB_SUFFIX}
	    LIBS += $${LIB_PATH}/opencv_core300.$${LIB_SUFFIX}
	    LIBS += $${LIB_PATH}/opencv_highgui300.$${LIB_SUFFIX}
	    LIBS += $${LIB_PATH}/opencv_imgproc300.$${LIB_SUFFIX}
	    LIBS += $${LIB_PATH}/opencv_imgcodecs300.$${LIB_SUFFIX}
	    LIBS += $${LIB_PATH}/opencv_ml300.$${LIB_SUFFIX}
	    LIBS += $${LIB_PATH}/opencv_imgcodecs300.$${LIB_SUFFIX}	
	    LIBS += $${LIB_PATH}/opencv_videoio300.$${LIB_SUFFIX}
	    LIBS += $${LIB_PATH}/opencv_video300.$${LIB_SUFFIX}
        LIBS += $${LIB_PATH}/opencv_objdetect300.$${LIB_SUFFIX}	
	
        LIBS += $${LIB_PATH}/opencv_cudaarithm300.$${LIB_SUFFIX}
        LIBS += $${LIB_PATH}/opencv_cudabgsegm300.$${LIB_SUFFIX}
        LIBS += $${LIB_PATH}/opencv_cudacodec300.$${LIB_SUFFIX}
        LIBS += $${LIB_PATH}/opencv_cudaimgproc300.$${LIB_SUFFIX}
        LIBS += $${LIB_PATH}/opencv_cudalegacy300.$${LIB_SUFFIX}
  } #config end

} #win32 end
