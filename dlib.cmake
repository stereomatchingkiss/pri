include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../3rdLibs/dlib/dlib-18.17)
C:\Users\yyyy\Qt\3rdLibs\dlib\dlib-18.17\bin\vc2015_x86_amd64

if(WIN32)
    set(DLIB_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../3rdLibs/dlib/dlib-18.17/bin)
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        if(MSVC14)		
		    if(CMAKE_BUILD_TYPE MATCHES Release)			    
                target_link_libraries(${PROJECT_NAME} ${DLIB_PATH}/vc2015_x86_amd64/release/dlib.lib)                			
			else(CMAKE_BUILD_TYPE MATCHES Release)
			    target_link_libraries(${PROJECT_NAME} ${DLIB_PATH}/vc2015_x86_amd64/debug/dlib.lib)    
		    endif(CMAKE_BUILD_TYPE MATCHES Release)
		else(MSVC14)
		    message(FATAL_ERROR "only support msvc14")
	    endif(MSVC14)
	else(CMAKE_SIZEOF_VOID_P EQUAL 8)
	        message(FATAL_ERROR "only support 64bits")
	endif(CMAKE_SIZEOF_VOID_P EQUAL 8)
else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")		
endif(WIN32)
