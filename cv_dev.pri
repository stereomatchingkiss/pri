CV_PATH = $$PWD/../3rdLibs/opencv/dev/build_vc12_tbb_contribute_32/install

INCLUDEPATH += $${CV_PATH}/include

LIB_SUFFIX = a

win32-msvc2013{

  LIB_SUFFIX = lib  
  !contains(QMAKE_TARGET.arch, x86_64) {
        message("x86 build confirm")
        LIB_PATH = $${CV_PATH}/x86/vc12/lib
   }else{
        message("x86_64 build confirm")
        LIB_PATH = $${CV_PATH}/x64/vc12/lib		
   }  

  CONFIG(debug, debug|release) {    
  } else {    
    #LIBS += $${LIB_PATH}/opencv_world300.$${LIB_SUFFIX}	
	LIBS += $${LIB_PATH}/opencv_core300.$${LIB_SUFFIX}
	LIBS += $${LIB_PATH}/opencv_highgui300.$${LIB_SUFFIX}
	LIBS += $${LIB_PATH}/opencv_imgproc300.$${LIB_SUFFIX}
	LIBS += $${LIB_PATH}/opencv_imgcodecs300.$${LIB_SUFFIX}
	LIBS += $${LIB_PATH}/opencv_ml300.$${LIB_SUFFIX}
	LIBS += $${LIB_PATH}/opencv_imgcodecs300.$${LIB_SUFFIX}	
	LIBS += $${LIB_PATH}/opencv_videoio300.$${LIB_SUFFIX}
	LIBS += $${LIB_PATH}/opencv_video300.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/opencv_objdetect300.$${LIB_SUFFIX}	
  } #config end

} #win32 end
