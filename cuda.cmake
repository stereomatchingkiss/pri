CMAKE_MINIMUM_REQUIRED( VERSION 3.1 )

if(WIN32)
    #C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v7.5
	find_package(CUDA QUIET REQUIRED)
	set(CUDA_PATH "C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v7.5")	
	
	include_directories(${CUDA_PATH}/include)       
else(WIN32)
    message(FATAL_ERROR "do not support non windows platform yet")		
endif(WIN32)
