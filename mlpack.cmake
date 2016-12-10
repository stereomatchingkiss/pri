include(${CMAKE_CURRENT_LIST_DIR}/../pri/boost.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/../pri/lapack.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/../pri/armadillo.cmake)

add_definitions(-DNOMINMAX)

set(MLPACK_PATH ${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/mlpack/fork/mlpack)

include_directories(${MLPACK_PATH}/src)

if(WIN32)    
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        if(MSVC14)
            if(CMAKE_BUILD_TYPE MATCHES Release)
                target_link_libraries(${PROJECT_NAME} ${MLPACK_PATH}/vc2015_64/Release/mlpack.lib)
                target_link_libraries(${PROJECT_NAME} ${BOOST_ROOT}/lib64-msvc-14.0/libboost_program_options-vc140-mt-1_61.lib)
                target_link_libraries(${PROJECT_NAME} ${BOOST_ROOT}/lib64-msvc-14.0/libboost_random-vc140-mt-1_61.lib)
                target_link_libraries(${PROJECT_NAME} ${BOOST_ROOT}/lib64-msvc-14.0/libboost_math_c99-vc140-mt-1_61.lib)
                target_link_libraries(${PROJECT_NAME} ${BOOST_ROOT}/lib64-msvc-14.0/libboost_serialization-vc140-mt-1_61.lib)
            else(CMAKE_BUILD_TYPE)
                message(FATAL_ERROR "only support release build by now")
            endif(CMAKE_BUILD_TYPE MATCHES Release)
         else(MSVC14)
                message(FATAL_ERROR "only support msvc14")
         endif(MSVC14)
    else(CMAKE_SIZEOF_VOID_P)
        message(FATAL_ERROR "only support 64bits")
    endif(CMAKE_SIZEOF_VOID_P EQUAL 8)
else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")
endif(WIN32)
