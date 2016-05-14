BOOST_PATH = $$PWD/../3rdLibs/boost/boost_1_59_0

INCLUDEPATH += $${BOOST_PATH}

LIB_SUFFIX = a

win32-msvc2013{

  LIB_SUFFIX = lib

  !contains(QMAKE_TARGET.arch, x86_64) {
     message("boost x86 build confirm")
     LIBS += -L$${BOOST_PATH}/lib32-msvc-12.0
        ## Windows x86 (32bit) specific build here
   }else{
     message("boost x64 build confirm")
     LIBS += -L$${BOOST_PATH}/lib64-msvc-12.0
        ## Windows x64 (64bit) specific build here
   }     

} #win32 end

win32-msvc2015{

  LIB_SUFFIX = lib

  !contains(QMAKE_TARGET.arch, x86_64) {
        message("boost x86 build confirm")
        LIBS += -L$${BOOST_PATH}/lib32-msvc-14.0
        ## Windows x86 (32bit) specific build here
   }else{
        message("boost x64 build confirm")
		LIBS += -L$${BOOST_PATH}/lib64-msvc-14.0
        ## Windows x64 (64bit) specific build here
   }     

} #win32 end
