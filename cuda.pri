LIB_SUFFIX = a

win32-msvc2013{

  CUDA_PATH = "C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA"
  CUDA_LIB_PATH = $${CUDA_PATH}/v7.5/lib/x64
  LIB_SUFFIX = .lib

} #win32 end

INCLUDEPATH += $${CUDA_PATH}/v7.5/include

LIBS += $${CUDA_LIB_PATH}/cublas$${LIB_SUFFIX}
LIBS += $${CUDA_LIB_PATH}/cublas_device$${LIB_SUFFIX}
LIBS += $${CUDA_LIB_PATH}/cuda$${LIB_SUFFIX}
LIBS += $${CUDA_LIB_PATH}/cudadevrt$${LIB_SUFFIX}
LIBS += $${CUDA_LIB_PATH}/cudart$${LIB_SUFFIX}
LIBS += $${CUDA_LIB_PATH}/curand$${LIB_SUFFIX}
