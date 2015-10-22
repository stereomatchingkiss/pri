CMAKE_MINIMUM_REQUIRED( VERSION 3.1 )

set(BOOST_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/../3rdLibs/boost/boost_1_59_0)
set(BOOST_INCLUDEDIR ${BOOST_ROOT}/boost)

FIND_PACKAGE(Boost)
IF (Boost_FOUND)
    INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIR})
    ADD_DEFINITIONS( "-DHAS_BOOST" )
ENDIF()

if(WIN32)
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        if(MSVC14)
            set(BOOST_LIBRARYDIR ${BOOST_ROOT}/lib64-msvc-14.0)
        endif(MSVC14)
        if(MSVC12)
            set(BOOST_LIBRARYDIR ${BOOST_ROOT}/lib64-msvc-12.0)
        endif(MSVC12)
    else(CMAKE_SIZEOF_VOID_P)
        if(MSVC14)
            set(BOOST_LIBRARYDIR ${BOOST_ROOT}/lib32-msvc-14.0)
        endif(MSVC14)
        if(MSVC12)
            set(BOOST_LIBRARYDIR ${BOOST_ROOT}/lib32-msvc-12.0)
        endif(MSVC12)
    endif(CMAKE_SIZEOF_VOID_P EQUAL 8)
else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")		
endif(WIN32)

