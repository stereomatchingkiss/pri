CMAKE_MINIMUM_REQUIRED( VERSION 3.1 )

if(WIN32)  
  set(CUDA_PATH "C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v7.5")
  set(CUDA_LIB_PATH ${CUDA_PATH}/lib/x64)

	include_directories(${CUDA_PATH}/include)       

  target_link_libraries(${PROJECT_NAME} ${CUDA_LIB_PATH}/cuda.lib)
  target_link_libraries(${PROJECT_NAME} ${CUDA_LIB_PATH}/cublas.lib)
  target_link_libraries(${PROJECT_NAME} ${CUDA_LIB_PATH}/cublas_device.lib)

else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")		
endif(WIN32)
