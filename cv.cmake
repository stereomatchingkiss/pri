CMAKE_MINIMUM_REQUIRED( VERSION 3.1 )

include_directories(${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/opencv/opencv-3.1.0/build/include)

if(WIN32)
    #C:\Users\yyyy\Qt\3rdLibs\opencv\opencv-3.0.0\build_vc14\bin\Release
    set(CV_PATH ${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/opencv/opencv-3.1.0)
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        if(CMAKE_BUILD_TYPE MATCHES Release)
            if(MSVC14) #opencv-3.1.0\bin\vc2015_x86_amd64
                set(CV_PATH ${CV_PATH}/bin/vc2015_x86_amd64/lib/release)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_core310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_dnn310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_face310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_highgui310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_imgproc310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_imgcodecs310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_ml310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_video310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_videoio310.lib)                            
            endif(MSVC14)
        else(CMAKE_BUILD_TYPE)
		   if(MSVC14) #opencv-3.1.0\bin\vc2015_x86_amd64
               set(CV_PATH ${CV_PATH}/bin/vc2015_x86_amd64/lib/debug)
               target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_core310d.lib)
               target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_dnn310d.lib)
               target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_face310d.lib)
               target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_highgui310d.lib)
               target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_imgproc310d.lib)
               target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_imgcodecs310d.lib)
               target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_ml310d.lib)
               target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_video310d.lib)
               target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_videoio310d.lib)
			endif(MSVC14)
        endif(CMAKE_BUILD_TYPE MATCHES Release)
    else(CMAKE_SIZEOF_VOID_P)
        message(FATAL_ERROR "only support 64bits")
    endif(CMAKE_SIZEOF_VOID_P EQUAL 8)
else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")		
endif(WIN32)

