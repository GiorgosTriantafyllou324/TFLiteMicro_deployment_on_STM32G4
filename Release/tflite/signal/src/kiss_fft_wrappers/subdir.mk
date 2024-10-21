################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tflite/signal/src/kiss_fft_wrappers/kiss_fft_float.cc \
../tflite/signal/src/kiss_fft_wrappers/kiss_fft_int16.cc \
../tflite/signal/src/kiss_fft_wrappers/kiss_fft_int32.cc 

CC_DEPS += \
./tflite/signal/src/kiss_fft_wrappers/kiss_fft_float.d \
./tflite/signal/src/kiss_fft_wrappers/kiss_fft_int16.d \
./tflite/signal/src/kiss_fft_wrappers/kiss_fft_int32.d 

OBJS += \
./tflite/signal/src/kiss_fft_wrappers/kiss_fft_float.o \
./tflite/signal/src/kiss_fft_wrappers/kiss_fft_int16.o \
./tflite/signal/src/kiss_fft_wrappers/kiss_fft_int32.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/signal/src/kiss_fft_wrappers/%.o tflite/signal/src/kiss_fft_wrappers/%.su tflite/signal/src/kiss_fft_wrappers/%.cyclo: ../tflite/signal/src/kiss_fft_wrappers/%.cc tflite/signal/src/kiss_fft_wrappers/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -DUSE_HAL_DRIVER -DSTM32G491xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/flatbuffers/include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/gemmlowp" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/ruy" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/kissfft" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/signal" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SVDFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SoftmaxFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/ReshapeFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/PoolingFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/tensorflow/lite/micro/kernels/cmsis_nn" -O3 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tflite-2f-signal-2f-src-2f-kiss_fft_wrappers

clean-tflite-2f-signal-2f-src-2f-kiss_fft_wrappers:
	-$(RM) ./tflite/signal/src/kiss_fft_wrappers/kiss_fft_float.cyclo ./tflite/signal/src/kiss_fft_wrappers/kiss_fft_float.d ./tflite/signal/src/kiss_fft_wrappers/kiss_fft_float.o ./tflite/signal/src/kiss_fft_wrappers/kiss_fft_float.su ./tflite/signal/src/kiss_fft_wrappers/kiss_fft_int16.cyclo ./tflite/signal/src/kiss_fft_wrappers/kiss_fft_int16.d ./tflite/signal/src/kiss_fft_wrappers/kiss_fft_int16.o ./tflite/signal/src/kiss_fft_wrappers/kiss_fft_int16.su ./tflite/signal/src/kiss_fft_wrappers/kiss_fft_int32.cyclo ./tflite/signal/src/kiss_fft_wrappers/kiss_fft_int32.d ./tflite/signal/src/kiss_fft_wrappers/kiss_fft_int32.o ./tflite/signal/src/kiss_fft_wrappers/kiss_fft_int32.su

.PHONY: clean-tflite-2f-signal-2f-src-2f-kiss_fft_wrappers

