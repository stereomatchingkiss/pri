CMAKE_MINIMUM_REQUIRED( VERSION 3.1 )

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/cppFormat)

SET(CPP_FORMAT_ADD_TO_EXECUTEABLE
${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/cppFormat/cppFormat/format.h
${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/cppFormat/cppFormat/format.cc
${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/cppFormat/cppFormat/posix.h
${CMAKE_CURRENT_LIST_DIR}/../3rdLibs/cppFormat/cppFormat/posix.cc)