################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tflite/signal/src/circular_buffer.cc \
../tflite/signal/src/energy.cc \
../tflite/signal/src/fft_auto_scale.cc \
../tflite/signal/src/filter_bank.cc \
../tflite/signal/src/filter_bank_log.cc \
../tflite/signal/src/filter_bank_spectral_subtraction.cc \
../tflite/signal/src/filter_bank_square_root.cc \
../tflite/signal/src/irfft_float.cc \
../tflite/signal/src/irfft_int16.cc \
../tflite/signal/src/irfft_int32.cc \
../tflite/signal/src/log.cc \
../tflite/signal/src/max_abs.cc \
../tflite/signal/src/msb_32.cc \
../tflite/signal/src/msb_64.cc \
../tflite/signal/src/overlap_add.cc \
../tflite/signal/src/pcan_argc_fixed.cc \
../tflite/signal/src/rfft_float.cc \
../tflite/signal/src/rfft_int16.cc \
../tflite/signal/src/rfft_int32.cc \
../tflite/signal/src/square_root_32.cc \
../tflite/signal/src/square_root_64.cc \
../tflite/signal/src/window.cc 

CC_DEPS += \
./tflite/signal/src/circular_buffer.d \
./tflite/signal/src/energy.d \
./tflite/signal/src/fft_auto_scale.d \
./tflite/signal/src/filter_bank.d \
./tflite/signal/src/filter_bank_log.d \
./tflite/signal/src/filter_bank_spectral_subtraction.d \
./tflite/signal/src/filter_bank_square_root.d \
./tflite/signal/src/irfft_float.d \
./tflite/signal/src/irfft_int16.d \
./tflite/signal/src/irfft_int32.d \
./tflite/signal/src/log.d \
./tflite/signal/src/max_abs.d \
./tflite/signal/src/msb_32.d \
./tflite/signal/src/msb_64.d \
./tflite/signal/src/overlap_add.d \
./tflite/signal/src/pcan_argc_fixed.d \
./tflite/signal/src/rfft_float.d \
./tflite/signal/src/rfft_int16.d \
./tflite/signal/src/rfft_int32.d \
./tflite/signal/src/square_root_32.d \
./tflite/signal/src/square_root_64.d \
./tflite/signal/src/window.d 

OBJS += \
./tflite/signal/src/circular_buffer.o \
./tflite/signal/src/energy.o \
./tflite/signal/src/fft_auto_scale.o \
./tflite/signal/src/filter_bank.o \
./tflite/signal/src/filter_bank_log.o \
./tflite/signal/src/filter_bank_spectral_subtraction.o \
./tflite/signal/src/filter_bank_square_root.o \
./tflite/signal/src/irfft_float.o \
./tflite/signal/src/irfft_int16.o \
./tflite/signal/src/irfft_int32.o \
./tflite/signal/src/log.o \
./tflite/signal/src/max_abs.o \
./tflite/signal/src/msb_32.o \
./tflite/signal/src/msb_64.o \
./tflite/signal/src/overlap_add.o \
./tflite/signal/src/pcan_argc_fixed.o \
./tflite/signal/src/rfft_float.o \
./tflite/signal/src/rfft_int16.o \
./tflite/signal/src/rfft_int32.o \
./tflite/signal/src/square_root_32.o \
./tflite/signal/src/square_root_64.o \
./tflite/signal/src/window.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/signal/src/%.o tflite/signal/src/%.su tflite/signal/src/%.cyclo: ../tflite/signal/src/%.cc tflite/signal/src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G491xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/flatbuffers/include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/gemmlowp" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/ruy" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/kissfft" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/signal" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SVDFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SoftmaxFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/ReshapeFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/PoolingFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/tensorflow/lite/micro/kernels/cmsis_nn" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++17 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tflite-2f-signal-2f-src

clean-tflite-2f-signal-2f-src:
	-$(RM) ./tflite/signal/src/circular_buffer.cyclo ./tflite/signal/src/circular_buffer.d ./tflite/signal/src/circular_buffer.o ./tflite/signal/src/circular_buffer.su ./tflite/signal/src/energy.cyclo ./tflite/signal/src/energy.d ./tflite/signal/src/energy.o ./tflite/signal/src/energy.su ./tflite/signal/src/fft_auto_scale.cyclo ./tflite/signal/src/fft_auto_scale.d ./tflite/signal/src/fft_auto_scale.o ./tflite/signal/src/fft_auto_scale.su ./tflite/signal/src/filter_bank.cyclo ./tflite/signal/src/filter_bank.d ./tflite/signal/src/filter_bank.o ./tflite/signal/src/filter_bank.su ./tflite/signal/src/filter_bank_log.cyclo ./tflite/signal/src/filter_bank_log.d ./tflite/signal/src/filter_bank_log.o ./tflite/signal/src/filter_bank_log.su ./tflite/signal/src/filter_bank_spectral_subtraction.cyclo ./tflite/signal/src/filter_bank_spectral_subtraction.d ./tflite/signal/src/filter_bank_spectral_subtraction.o ./tflite/signal/src/filter_bank_spectral_subtraction.su ./tflite/signal/src/filter_bank_square_root.cyclo ./tflite/signal/src/filter_bank_square_root.d ./tflite/signal/src/filter_bank_square_root.o ./tflite/signal/src/filter_bank_square_root.su ./tflite/signal/src/irfft_float.cyclo ./tflite/signal/src/irfft_float.d ./tflite/signal/src/irfft_float.o ./tflite/signal/src/irfft_float.su ./tflite/signal/src/irfft_int16.cyclo ./tflite/signal/src/irfft_int16.d ./tflite/signal/src/irfft_int16.o ./tflite/signal/src/irfft_int16.su ./tflite/signal/src/irfft_int32.cyclo ./tflite/signal/src/irfft_int32.d ./tflite/signal/src/irfft_int32.o ./tflite/signal/src/irfft_int32.su ./tflite/signal/src/log.cyclo ./tflite/signal/src/log.d ./tflite/signal/src/log.o ./tflite/signal/src/log.su ./tflite/signal/src/max_abs.cyclo ./tflite/signal/src/max_abs.d ./tflite/signal/src/max_abs.o ./tflite/signal/src/max_abs.su ./tflite/signal/src/msb_32.cyclo ./tflite/signal/src/msb_32.d ./tflite/signal/src/msb_32.o ./tflite/signal/src/msb_32.su ./tflite/signal/src/msb_64.cyclo ./tflite/signal/src/msb_64.d ./tflite/signal/src/msb_64.o ./tflite/signal/src/msb_64.su ./tflite/signal/src/overlap_add.cyclo ./tflite/signal/src/overlap_add.d ./tflite/signal/src/overlap_add.o ./tflite/signal/src/overlap_add.su ./tflite/signal/src/pcan_argc_fixed.cyclo ./tflite/signal/src/pcan_argc_fixed.d ./tflite/signal/src/pcan_argc_fixed.o ./tflite/signal/src/pcan_argc_fixed.su ./tflite/signal/src/rfft_float.cyclo ./tflite/signal/src/rfft_float.d ./tflite/signal/src/rfft_float.o ./tflite/signal/src/rfft_float.su ./tflite/signal/src/rfft_int16.cyclo ./tflite/signal/src/rfft_int16.d ./tflite/signal/src/rfft_int16.o ./tflite/signal/src/rfft_int16.su ./tflite/signal/src/rfft_int32.cyclo ./tflite/signal/src/rfft_int32.d ./tflite/signal/src/rfft_int32.o ./tflite/signal/src/rfft_int32.su ./tflite/signal/src/square_root_32.cyclo ./tflite/signal/src/square_root_32.d ./tflite/signal/src/square_root_32.o ./tflite/signal/src/square_root_32.su ./tflite/signal/src/square_root_64.cyclo ./tflite/signal/src/square_root_64.d ./tflite/signal/src/square_root_64.o ./tflite/signal/src/square_root_64.su ./tflite/signal/src/window.cyclo ./tflite/signal/src/window.d ./tflite/signal/src/window.o ./tflite/signal/src/window.su

.PHONY: clean-tflite-2f-signal-2f-src

