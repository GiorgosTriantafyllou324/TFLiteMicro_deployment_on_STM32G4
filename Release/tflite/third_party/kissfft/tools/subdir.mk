################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tflite/third_party/kissfft/tools/kiss_fftr.c 

C_DEPS += \
./tflite/third_party/kissfft/tools/kiss_fftr.d 

OBJS += \
./tflite/third_party/kissfft/tools/kiss_fftr.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/third_party/kissfft/tools/%.o tflite/third_party/kissfft/tools/%.su tflite/third_party/kissfft/tools/%.cyclo: ../tflite/third_party/kissfft/tools/%.c tflite/third_party/kissfft/tools/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G491xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/flatbuffers/include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/gemmlowp" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/ruy" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/kissfft" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/signal" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SVDFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SoftmaxFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/ReshapeFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/PoolingFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/tensorflow/lite/micro/kernels/cmsis_nn" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tflite-2f-third_party-2f-kissfft-2f-tools

clean-tflite-2f-third_party-2f-kissfft-2f-tools:
	-$(RM) ./tflite/third_party/kissfft/tools/kiss_fftr.cyclo ./tflite/third_party/kissfft/tools/kiss_fftr.d ./tflite/third_party/kissfft/tools/kiss_fftr.o ./tflite/third_party/kissfft/tools/kiss_fftr.su

.PHONY: clean-tflite-2f-third_party-2f-kissfft-2f-tools
