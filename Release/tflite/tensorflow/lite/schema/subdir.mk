################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tflite/tensorflow/lite/schema/schema_utils.cc 

CC_DEPS += \
./tflite/tensorflow/lite/schema/schema_utils.d 

OBJS += \
./tflite/tensorflow/lite/schema/schema_utils.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/tensorflow/lite/schema/%.o tflite/tensorflow/lite/schema/%.su tflite/tensorflow/lite/schema/%.cyclo: ../tflite/tensorflow/lite/schema/%.cc tflite/tensorflow/lite/schema/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -DUSE_HAL_DRIVER -DSTM32G491xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/flatbuffers/include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/gemmlowp" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/ruy" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/kissfft" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/signal" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SVDFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SoftmaxFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/ReshapeFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/PoolingFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/third_party/cmsis_nn/Include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/tflite/tensorflow/lite/micro/kernels/cmsis_nn" -O3 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tflite-2f-tensorflow-2f-lite-2f-schema

clean-tflite-2f-tensorflow-2f-lite-2f-schema:
	-$(RM) ./tflite/tensorflow/lite/schema/schema_utils.cyclo ./tflite/tensorflow/lite/schema/schema_utils.d ./tflite/tensorflow/lite/schema/schema_utils.o ./tflite/tensorflow/lite/schema/schema_utils.su

.PHONY: clean-tflite-2f-tensorflow-2f-lite-2f-schema

