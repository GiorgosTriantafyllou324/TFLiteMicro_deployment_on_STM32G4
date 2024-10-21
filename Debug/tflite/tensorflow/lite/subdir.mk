################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tflite/tensorflow/lite/array.cc 

CC_DEPS += \
./tflite/tensorflow/lite/array.d 

OBJS += \
./tflite/tensorflow/lite/array.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/tensorflow/lite/%.o tflite/tensorflow/lite/%.su tflite/tensorflow/lite/%.cyclo: ../tflite/tensorflow/lite/%.cc tflite/tensorflow/lite/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G491xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/flatbuffers/include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/gemmlowp" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/ruy" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/kissfft" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/signal" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++17 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tflite-2f-tensorflow-2f-lite

clean-tflite-2f-tensorflow-2f-lite:
	-$(RM) ./tflite/tensorflow/lite/array.cyclo ./tflite/tensorflow/lite/array.d ./tflite/tensorflow/lite/array.o ./tflite/tensorflow/lite/array.su

.PHONY: clean-tflite-2f-tensorflow-2f-lite

