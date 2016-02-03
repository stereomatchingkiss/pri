CV_PATH = $$PWD/../3rdLibs/opencv/opencv-3.1.0/build_vc12_tbb_contribute_cuda_64/lib

INCLUDEPATH += $$PWD/../3rdLibs/opencv/opencv-3.1.0/build/include

LIB_SUFFIX = a

win32-msvc2013{

  LIB_SUFFIX = lib  
  !contains(QMAKE_TARGET.arch, x86_64) {
        error("opencv cuda do not support 32bits on windows")        
   }else{
        message("opencv x64 build confirm")
        LIB_PATH = $${CV_PATH}
   }
        
   CONFIG(debug, debug|release) {
        message("opencv cuda do not support debug build yet") 
        LIB_PATH = $${CV_PATH}/Debug
        LIB_VER = 310d		
   }
   
   CONFIG(release, debug|release) {        
        LIB_PATH = $${CV_PATH}/Release
		LIB_VER = 310
   }
   
   LIBS += $${LIB_PATH}/opencv_core$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_dnn$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_highgui$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_imgproc$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_imgcodecs$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_ml$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_imgcodecs$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_saliency$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_videoio$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_video$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_objdetect$${LIB_VER}.$${LIB_SUFFIX}
	
   LIBS += $${LIB_PATH}/opencv_cudaarithm$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_cudabgsegm$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_cudacodec$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_cudaimgproc$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_cudalegacy$${LIB_VER}.$${LIB_SUFFIX}   

} #win32 end
