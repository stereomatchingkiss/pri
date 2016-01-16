CV_PATH = $$PWD/../3rdLibs/opencv/opencv-3.1.0

INCLUDEPATH += $${CV_PATH}/build/include

LIB_SUFFIX = a

win32-msvc2015{

  LIB_SUFFIX = lib    

  CONFIG(debug, debug|release) {
    LIB_PATH = $${CV_PATH}/bin/vc2015_x86_amd64/lib	                
    LIBS += $${LIB_PATH}/debug/opencv_core310d.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/debug/opencv_dnn310d.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/debug/opencv_face310d.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/debug/opencv_highgui310d.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/debug/opencv_imgproc310d.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/debug/opencv_imgcodecs310d.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/debug/opencv_ml310d.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/debug/opencv_video310d.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/debug/opencv_videoio310d.$${LIB_SUFFIX}
  } else {    
    LIB_PATH = $${CV_PATH}/bin/vc2015_x86_amd64/lib	                
    LIBS += $${LIB_PATH}/release/opencv_core310.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/release/opencv_dnn310.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/release/opencv_face310.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/release/opencv_highgui310.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/release/opencv_imgproc310.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/release/opencv_imgcodecs310.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/release/opencv_ml310.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/release/opencv_video310.$${LIB_SUFFIX}
    LIBS += $${LIB_PATH}/release/opencv_videoio310.$${LIB_SUFFIX}
  } #config end

} #win32 end
