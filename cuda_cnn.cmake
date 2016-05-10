CMAKE_MINIMUM_REQUIRED( VERSION 3.1 )

if(WIN32)    	
  set(CUDA_CNN_PATH "C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/cudnn-7.0-win-x64-v4.0-rc/cuda")
	
  INCLUDE_DIRECTORIES(${CUDA_CNN_PATH}/include)
  #set(CUDNN_INCLUDE ${CUDA_CNN_PATH}/include)
  target_link_libraries(${PROJECT_NAME} ${CUDA_CNN_PATH}/lib/x64/cudnn.lib)
else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")		
endif(WIN32)
