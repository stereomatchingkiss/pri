CMAKE_MINIMUM_REQUIRED( VERSION 3.1 )

include(${CMAKE_CURRENT_LIST_DIR}/../pri/cv_cuda.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/../pri/cuda.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/../pri/cudacnn.cmake)

if(WIN32)    
    #C:\Users\yyyy\Qt\3rdLibs\mxnet\build_vc12_tbb_contribute_cuda_64\Release
	set(MXNET_PATH ${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/mxnet/build_vc12_tbb_contribute_cuda_64)
	#C:\Users\yyyy\Qt\3rdLibs\mxnet_thirdparty\OpenBLAS\lib
    set(BLAS_PATH ${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/mxnet_thirdparty/OpenBLAS)	
	
	include_directories(${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/MxNet.cpp/include)     
	include_directories(${BLAS_PATH}/include) 
    
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        if(MSVC12)
            if(CMAKE_BUILD_TYPE MATCHES Release)			    			    		   
                target_link_libraries(${PROJECT_NAME} ${BLAS_PATH}/lib/openblas.lib)
				target_link_libraries(${PROJECT_NAME} ${MXNET_PATH}/Release/libmxnet.lib)
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
