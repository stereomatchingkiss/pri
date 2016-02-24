LIB_SUFFIX = a

win32-msvc2013{
  ARMA_PATH = $$PWD/../3rdLibs/armadillo/armadillo-6.500.5

  INCLUDEPATH += $${ARMA_PATH}/include

  LIB_SUFFIX = lib

  !contains(QMAKE_TARGET.arch, x86_64) {     
     message("armadillo do not support 32bits yet")
   }else{     
     LIBS += -L$${ARMA_PATH}/vc2013_64/Release/armadillo.$${LIB_SUFFIX}
     ## Windows x64 (64bit) specific build here
   }     

} #win32 end
