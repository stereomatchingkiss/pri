LIB_SUFFIX = a

win32-msvc2013{

  CUDA_PATH = "C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA"
  CUDA_DNN_LIB_PATH = "C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/cudnn-7.0-win-x64-v4.0-rc/cuda/lib/x64"
  LIB_SUFFIX = .lib

} #win32 end

INCLUDEPATH += $${CUDA_PATH}/"cudnn-7.0-win-x64-v4.0-rc/cuda/include"

LIBS += $${CUDA_DNN_LIB_PATH}/cudnn$${LIB_SUFFIX}
