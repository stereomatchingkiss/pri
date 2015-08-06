BOOST_PATH = $$PWD/../3rdLibs/boost/boost_1_58_0

INCLUDEPATH += $${BOOST_PATH}

LIB_SUFFIX = a

win32-msvc*{

  LIB_SUFFIX = lib

  LIBS += -L$${BOOST_PATH}/lib32-msvc-12.0  

} #win32 end
