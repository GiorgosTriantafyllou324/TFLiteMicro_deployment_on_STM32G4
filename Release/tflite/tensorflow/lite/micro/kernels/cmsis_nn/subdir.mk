################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tflite/tensorflow/lite/micro/kernels/cmsis_nn/add.cc \
../tflite/tensorflow/lite/micro/kernels/cmsis_nn/conv.cc \
../tflite/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.cc \
../tflite/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.cc \
../tflite/tensorflow/lite/micro/kernels/cmsis_nn/mul.cc \
../tflite/tensorflow/lite/micro/kernels/cmsis_nn/pooling.cc \
../tflite/tensorflow/lite/micro/kernels/cmsis_nn/softmax.cc \
../tflite/tensorflow/lite/micro/kernels/cmsis_nn/svdf.cc \
../tflite/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.cc \
../tflite/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.cc 

CC_DEPS += \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/add.d \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/conv.d \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.d \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.d \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/mul.d \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/pooling.d \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/softmax.d \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/svdf.d \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.d \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.d 

OBJS += \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/add.o \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/conv.o \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.o \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.o \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/mul.o \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/pooling.o \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/softmax.o \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/svdf.o \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.o \
./tflite/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/tensorflow/lite/micro/kernels/cmsis_nn/%.o tflite/tensorflow/lite/micro/kernels/cmsis_nn/%.su tflite/tensorflow/lite/micro/kernels/cmsis_nn/%.cyclo: ../tflite/tensorflow/lite/micro/kernels/cmsis_nn/%.cc tflite/tensorflow/lite/micro/kernels/cmsis_nn/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -DUSE_HAL_DRIVER -DSTM32G491xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/flatbuffers/include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/gemmlowp" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/ruy" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/kissfft" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/signal" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SVDFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SoftmaxFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/ReshapeFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/PoolingFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/tensorflow/lite/micro/kernels/cmsis_nn" -O3 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tflite-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis_nn

clean-tflite-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis_nn:
	-$(RM) ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/add.cyclo ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/add.d ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/add.o ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/add.su ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/conv.cyclo ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/conv.d ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/conv.o ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/conv.su ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.cyclo ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.d ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.o ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.su ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.cyclo ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.d ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.o ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.su ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/mul.cyclo ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/mul.d ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/mul.o ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/mul.su ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/pooling.cyclo ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/pooling.d ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/pooling.o ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/pooling.su ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/softmax.cyclo ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/softmax.d ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/softmax.o ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/softmax.su ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/svdf.cyclo ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/svdf.d ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/svdf.o ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/svdf.su ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.cyclo ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.d ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.o ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.su ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.cyclo ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.d ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.o ./tflite/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.su

.PHONY: clean-tflite-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis_nn

