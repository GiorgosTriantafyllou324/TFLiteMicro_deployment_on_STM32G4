################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tflite/tensorflow/lite/kernels/internal/reference/comparisons.cc \
../tflite/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cc 

CC_DEPS += \
./tflite/tensorflow/lite/kernels/internal/reference/comparisons.d \
./tflite/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.d 

OBJS += \
./tflite/tensorflow/lite/kernels/internal/reference/comparisons.o \
./tflite/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/tensorflow/lite/kernels/internal/reference/%.o tflite/tensorflow/lite/kernels/internal/reference/%.su tflite/tensorflow/lite/kernels/internal/reference/%.cyclo: ../tflite/tensorflow/lite/kernels/internal/reference/%.cc tflite/tensorflow/lite/kernels/internal/reference/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G491xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/flatbuffers/include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/gemmlowp" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/ruy" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/kissfft" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/signal" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SVDFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SoftmaxFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/ReshapeFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/PoolingFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/tensorflow/lite/micro/kernels/cmsis_nn" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++17 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tflite-2f-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference

clean-tflite-2f-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference:
	-$(RM) ./tflite/tensorflow/lite/kernels/internal/reference/comparisons.cyclo ./tflite/tensorflow/lite/kernels/internal/reference/comparisons.d ./tflite/tensorflow/lite/kernels/internal/reference/comparisons.o ./tflite/tensorflow/lite/kernels/internal/reference/comparisons.su ./tflite/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cyclo ./tflite/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.d ./tflite/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o ./tflite/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.su

.PHONY: clean-tflite-2f-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference
