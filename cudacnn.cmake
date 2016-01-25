CMAKE_MINIMUM_REQUIRED( VERSION 3.1 )

if(WIN32)
    #C:\Users\yyyy\Qt\3rdLibs\cudnn-7.0-win-x64-v4.0-rc\cuda
	find_package(CUDA QUIET REQUIRED)
	set(CUDACNN_PATH ${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/cudnn-7.0-win-x64-v4.0-rc/cuda)	
	
	include_directories(${CUDACNN_PATH}/include) 

	if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        if(MSVC12)
            if(CMAKE_BUILD_TYPE MATCHES Release)			    
			    target_link_libraries(${PROJECT_NAME} ${CUDACNN_PATH}/lib/X64/cudnn.lib)
            else(CMAKE_BUILD_TYPE)
               message(FATAL_ERROR "only support release build by now")
            endif(CMAKE_BUILD_TYPE MATCHES Release)
        else(MSVC12)
            message(FATAL_ERROR "only support msvc12")
        endif(MSVC12)
    else(CMAKE_SIZEOF_VOID_P)
        message(FATAL_ERROR "only support 64bits")
    endif(CMAKE_SIZEOF_VOID_P EQUAL 8)
	
else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")		
endif(WIN32)
