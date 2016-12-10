LIB_SUFFIX = a

win32-msvc2012{

  LIB_SUFFIX = lib

  !contains(QMAKE_TARGET.arch, x86_64) {
     message("boost x86 build confirm")
     WT_PATH = $$PWD/../3rdLibs/wt/win/vc2012/32
     ## Windows x86 (32bit) specific build here
   }else{
     message("boost x64 build confirm")
     WT_PATH = $$PWD/../3rdLibs/wt/win/vc2012/64
     #Windows x64 (64bit) specific build here
   }

   WT_LIB = $${WT_PATH}/lib
} #win32 end

win32-msvc2013{

  LIB_SUFFIX = lib

  !contains(QMAKE_TARGET.arch, x86_64) {
     message("boost x86 build confirm")
     WT_PATH = $$PWD/../3rdLibs/wt/win/vc2013/32
     ## Windows x86 (32bit) specific build here
   }else{
     message("boost x64 build confirm")
     WT_PATH = $$PWD/../3rdLibs/wt/win/vc2013/64
     #Windows x64 (64bit) specific build here
   }

   WT_LIB = $${WT_PATH}/lib
} #win32 end

CONFIG(debug, debug|release) {
  WTRD = d.$${LIB_SUFFIX}  
}

CONFIG(release, debug|release) {
  WTRD = .$${LIB_SUFFIX}
}

include(boost.pri)

LIBS += $${WT_LIB}/libhpdf$${WTRD}

LIBS += -L$${WT_LIB}

LIBS += $${WT_LIB}/wt$${WTRD}
LIBS += $${WT_LIB}/wthttp$${WTRD}
LIBS += $${WT_LIB}/wtdbo$${WTRD}
LIBS += $${WT_LIB}/wtdbosqlite3$${WTRD}
#LIBS += $${WT_LIB}/wtdbofirebird$${WTRD}
#LIBS += $${WT_LIB}/wtdbomysql$${WTRD}
#LIBS += $${WT_LIB}/wtdbopostgres$${WTRD}
#LIBS += $${WT_LIB}/wtisapi$${WTRD}
#LIBS += $${WT_LIB}/wttest$${WTRD}


INCLUDEPATH += $${WT_PATH}/include

