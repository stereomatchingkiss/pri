CMAKE_MINIMUM_REQUIRED( VERSION 3.1 )

include_directories(${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/opencv/opencv-3.1.0/build/include)

find_package(CUDA QUIET REQUIRED)

if(WIN32)
    #C:\Users\yyyy\Qt\3rdLibs\opencv\opencv-3.0.0\build_vc14\bin\Release
    set(CV_PATH ${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/opencv/opencv-3.1.0)
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        if(CMAKE_BUILD_TYPE MATCHES Release)
            if(MSVC12) #opencv-3.1.0\bin\vc2015_x86_amd64
			    #C:\Users\yyyy\Qt\3rdLibs\opencv\opencv-3.1.0\build_vc12_tbb_contribute_cuda_64\lib\Release
                set(CV_PATH ${CV_PATH}/build_vc12_tbb_contribute_cuda_64/lib/Release)
				target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_cudaarithm310.lib)
				target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_cudabgsegm310.lib)
				target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_cudacodec310.lib)
				target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_cudaimgproc310.lib)
				target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_cudalegacy310.lib)
				
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_core310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_dnn310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_face310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_highgui310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_imgproc310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_imgcodecs310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_ml310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_video310.lib)
                target_link_libraries(${PROJECT_NAME} ${CV_PATH}/opencv_videoio310.lib)
            else(MSVC12)
                message(FATAL_ERROR "only support vc12")
            endif(MSVC12)
        else(CMAKE_BUILD_TYPE)
           message(FATAL_ERROR "only support release build")
        endif(CMAKE_BUILD_TYPE MATCHES Release)
    else(CMAKE_SIZEOF_VOID_P)
        message(FATAL_ERROR "only support 64bits")
    endif(CMAKE_SIZEOF_VOID_P EQUAL 8)
else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")		
endif(WIN32)

