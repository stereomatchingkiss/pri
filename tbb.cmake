set(TBB_PATH ${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/tbb)

if(WIN32)
    include_directories(${TBB_PATH}/tbb44_20151115oss_win_0/tbb44_20151115oss/include)
	
	if(MSVC11)
	   add_definitions(-DOCV_SUPPORT_INTEL_TBB)
	   set(TBB_LIB_PATH ${TBB_PATH}/tbb44_20151115oss_win_0/tbb44_20151115oss/lib/vc11)
	endif(MSVC11)
	
	if(MSVC12)
	   add_definitions(-DOCV_SUPPORT_INTEL_TBB)
	   set(TBB_LIB_PATH ${TBB_PATH}/tbb44_20151115oss_win_0/tbb44_20151115oss/lib/vc12)
	endif(MSVC12)
	
	if(MSVC12)
	   add_definitions(-DOCV_SUPPORT_INTEL_TBB)
	   set(TBB_LIB_PATH ${TBB_PATH}/tbb44_20151115oss_win_0/tbb44_20151115oss/lib/vc14)
	endif(MSVC12)
	
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        set(TBB_LIB_PATH ${TBB_PATH}/intel64)        	
	else(CMAKE_SIZEOF_VOID_P EQUAL 8)
        set(TBB_LIB_PATH ${TBB_PATH}/ia32)
	endif(CMAKE_SIZEOF_VOID_P EQUAL 8)
	
	if(CMAKE_BUILD_TYPE MATCHES Release)
        set(TBB_LIB_TYPE .lib)            
    endif(CMAKE_BUILD_TYPE MATCHES Release)
	
	if(CMAKE_BUILD_TYPE MATCHES Debug)
        set(TBB_LIB_TYPE _debug.lib)
    endif(CMAKE_BUILD_TYPE MATCHES Debug)
	
else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")		
endif(WIN32)

target_link_libraries(${PROJECT_NAME} ${TBB_LIB_PATH}/tbb${TBB_LIB_TYPE})
target_link_libraries(${PROJECT_NAME} ${TBB_LIB_PATH}/tbbmalloc${TBB_LIB_TYPE})
target_link_libraries(${PROJECT_NAME} ${TBB_LIB_PATH}/tbbmalloc_proxy${TBB_LIB_TYPE})
