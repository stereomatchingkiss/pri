set(DLIB_PATH ${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/dlib/dlib)

if(WIN32)    
    set(LIB_SUFFIX .lib)
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        if(MSVC14)
            if(CMAKE_BUILD_TYPE MATCHES Release)
                set(DLIB_LIB_PATH ${DLIB_PATH}/vc2015_64/dlib/Release)
            endif(CMAKE_BUILD_TYPE MATCHES Release)

            if(CMAKE_BUILD_TYPE MATCHES Debug)
                set(DLIB_LIB_PATH ${DLIB_PATH}/vc2015_64/dlib/Debug)    
            endif(CMAKE_BUILD_TYPE MATCHES Debug)        
        endif(MSVC14)
		
		if(MSVC12)
            if(CMAKE_BUILD_TYPE MATCHES Release)
                set(DLIB_LIB_PATH ${DLIB_PATH}/vc2013_64/dlib/Release)
            endif(CMAKE_BUILD_TYPE MATCHES Release)

            if(CMAKE_BUILD_TYPE MATCHES Debug)
                set(DLIB_LIB_PATH ${DLIB_PATH}/vc2013_64/dlib/Debug)    
            endif(CMAKE_BUILD_TYPE MATCHES Debug)        
        endif(MSVC12)
    endif(CMAKE_SIZEOF_VOID_P EQUAL 8)
else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")
endif(WIN32)


include_directories(${DLIB_PATH})
target_link_libraries(${PROJECT_NAME} ${DLIB_LIB_PATH}/dlib${LIB_SUFFIX})
