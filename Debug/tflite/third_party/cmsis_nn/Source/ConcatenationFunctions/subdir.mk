################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_w.c \
../tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_x.c \
../tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_y.c \
../tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_z.c 

C_DEPS += \
./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_w.d \
./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_x.d \
./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_y.d \
./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_z.d 

OBJS += \
./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_w.o \
./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_x.o \
./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_y.o \
./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_z.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/%.o tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/%.su tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/%.cyclo: ../tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/%.c tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G491xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/flatbuffers/include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/gemmlowp" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/ruy" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/kissfft" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/signal" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SVDFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SoftmaxFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/ReshapeFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/PoolingFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/tensorflow/lite/micro/kernels/cmsis_nn" -O0 -ffunction-sections -fdata-sections -Wall -std=c++17 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tflite-2f-third_party-2f-cmsis_nn-2f-Source-2f-ConcatenationFunctions

clean-tflite-2f-third_party-2f-cmsis_nn-2f-Source-2f-ConcatenationFunctions:
	-$(RM) ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_w.cyclo ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_w.d ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_w.o ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_w.su ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_x.cyclo ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_x.d ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_x.o ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_x.su ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_y.cyclo ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_y.d ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_y.o ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_y.su ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_z.cyclo ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_z.d ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_z.o ./tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/arm_concatenation_s8_z.su

.PHONY: clean-tflite-2f-third_party-2f-cmsis_nn-2f-Source-2f-ConcatenationFunctions

