CMAKE_MINIMUM_REQUIRED( VERSION 3.1 )

include_directories(${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/opencv/opencv-3.0.0/build/include)

if(WIN32)
    #C:\Users\yyyy\Qt\3rdLibs\opencv\opencv-3.0.0\build_vc14\bin\Release
    set(CV_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../3rdLibs/opencv/opencv-3.0.0)
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        if(CMAKE_BUILD_TYPE MATCHES Release)
            if(MSVC14)
                set(CV_PATH ${CV_PATH}/bin/vc2015_x86_amd64/release)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_core300.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_highgui300.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_imgproc300.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_imgcodecs300.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_ml300.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_video300.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_videoio300.lib)
            else(MSVC14)
                message(FATAL_ERROR "only support msvc14")
            endif(MSVC14)
        else(CMAKE_BUILD_TYPE)
           message(FATAL_ERROR "only support release build")
        endif(CMAKE_BUILD_TYPE MATCHES Release)
    else(CMAKE_SIZEOF_VOID_P)
        message(FATAL_ERROR "only support 64bits")
    endif(CMAKE_SIZEOF_VOID_P EQUAL 8)
else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")		
endif(WIN32)

