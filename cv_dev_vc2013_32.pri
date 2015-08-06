CV_PATH = $$PWD/../3rdLibs/opencv/dev/build_vc12_tbb_contribute_32/install

INCLUDEPATH += $${CV_PATH}/include

LIB_SUFFIX = a

win32-msvc*{

  LIB_SUFFIX = lib  
  LIB_PATH = $${CV_PATH}/x86/vc12/lib

  CONFIG(debug, debug|release) {    
  } else {    
    LIBS += $${LIB_PATH}/opencv_core300.$${LIB_SUFFIX}
	LIBS += $${LIB_PATH}/opencv_highgui300.$${LIB_SUFFIX}
	LIBS += $${LIB_PATH}/opencv_imgproc300.$${LIB_SUFFIX}
	LIBS += $${LIB_PATH}/opencv_ml300.$${LIB_SUFFIX}
	LIBS += $${LIB_PATH}/opencv_imgcodecs300.$${LIB_SUFFIX}	
  } #config end

} #win32 end
