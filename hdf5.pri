HDF5_PATH = $$PWD/../3rdLibs/hdf5/1.8.16/hdf5

INCLUDEPATH += $${HDF5_PATH}/include

LIB_SUFFIX = a

win32-msvc2013{

  LIB_SUFFIX = lib    
  #C:\Users\yyyy\Qt\3rdLibs\opencv\opencv-3.1.0\build\x64\vc12\bin
  CONFIG(debug, debug|release) {
      message("hdf5 do not support debug build yet")
  }
   
  CONFIG(release, debug|release) {        
      LIB_PATH = $${HDF5_PATH}/vc2013_x86_amd64/release/lib
  }   
  
  LIBS += $${LIB_PATH}/libszip.$${LIB_SUFFIX}
  LIBS += $${LIB_PATH}/libzlib.$${LIB_SUFFIX}
  LIBS += $${LIB_PATH}/libhdf5.$${LIB_SUFFIX}
  LIBS += $${LIB_PATH}/libhdf5_cpp.$${LIB_SUFFIX}
  LIBS += $${LIB_PATH}/libhdf5_f90cstub.$${LIB_SUFFIX}
  LIBS += $${LIB_PATH}/libhdf5_fortran.$${LIB_SUFFIX}
  LIBS += $${LIB_PATH}/libhdf5_hl.$${LIB_SUFFIX}
  LIBS += $${LIB_PATH}/libhdf5_hl_cpp.$${LIB_SUFFIX}
  LIBS += $${LIB_PATH}/libhdf5_hl_f90cstub.$${LIB_SUFFIX}
  LIBS += $${LIB_PATH}/libhdf5_hl_fortran.$${LIB_SUFFIX}
  LIBS += $${LIB_PATH}/libhdf5_tools.$${LIB_SUFFIX}
} #win32 end


