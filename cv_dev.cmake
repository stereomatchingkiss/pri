CMAKE_MINIMUM_REQUIRED( VERSION 3.1 )

set(CV_LIB_VER 310)

if(WIN32)
    set(LIB_SUFFIX .lib)
    #C:\Users\yyyy\Qt\3rdLibs\opencv\opencv-3.0.0\build_vc14\bin\Release
    set(CV_PATH ${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/opencv/dev)
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        if(CMAKE_BUILD_TYPE MATCHES Release)
            if(MSVC12) #opencv-3.1.0\bin\vc2015_x86_amd64
                set(CV_LIB_PATH ${CV_PATH}/vc2013_64/install/x64/vc12/lib)                                  
            endif(MSVC12)
            if(MSVC14) #opencv-3.1.0\bin\vc2015_x86_amd64
                set(CV_LIB_PATH ${CV_PATH}/vc2015_64/install/x64/vc14/lib)
            endif(MSVC14)
        endif(CMAKE_BUILD_TYPE MATCHES Release)    
    endif(CMAKE_SIZEOF_VOID_P EQUAL 8)
else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")		
endif(WIN32)

include_directories(${CV_PATH}/vc2013_64/install/include)

target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_core${CV_LIB_VER}${LIB_SUFFIX})
target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_bgsegm${CV_LIB_VER}${LIB_SUFFIX})
target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_dnn${CV_LIB_VER}${LIB_SUFFIX})
target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_face${CV_LIB_VER}${LIB_SUFFIX})
target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_features2d${CV_LIB_VER}${LIB_SUFFIX})
target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_highgui${CV_LIB_VER}${LIB_SUFFIX})
target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_imgproc${CV_LIB_VER}${LIB_SUFFIX})
target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_imgcodecs${CV_LIB_VER}${LIB_SUFFIX})
target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_ml${CV_LIB_VER}${LIB_SUFFIX})
target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_objdetect${CV_LIB_VER}${LIB_SUFFIX})
target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_tracking${CV_LIB_VER}${LIB_SUFFIX})
target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_video${CV_LIB_VER}${LIB_SUFFIX})
target_link_libraries(${PROJECT_NAME} ${CV_LIB_PATH}/opencv_videoio${CV_LIB_VER}${LIB_SUFFIX})

