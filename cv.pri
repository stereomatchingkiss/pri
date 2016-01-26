CV_PATH = $$PWD/../3rdLibs/opencv/opencv-3.1.0

INCLUDEPATH += $${CV_PATH}/build/include

LIB_SUFFIX = a

win32-msvc2015{

  LIB_SUFFIX = lib    
  
   CONFIG(debug, debug|release) {
        message("opencv cuda do not support debug build yet") 
        LIB_PATH = $${CV_PATH}/bin/vc2015_x86_amd64/lib/debug
        LIB_VER = 310d		
   }
   
   CONFIG(release, debug|release) {        
        LIB_PATH = $${CV_PATH}/bin/vc2015_x86_amd64/lib/release
		LIB_VER = 310
   }

   LIBS += $${LIB_PATH}/opencv_core$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_dnn$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_face$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_highgui$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_imgproc$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_imgcodecs$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_ml$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_video$${LIB_VER}.$${LIB_SUFFIX}
   LIBS += $${LIB_PATH}/opencv_videoio$${LIB_VER}.$${LIB_SUFFIX}

} #win32 end
