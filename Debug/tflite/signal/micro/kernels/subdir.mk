################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tflite/signal/micro/kernels/delay.cc \
../tflite/signal/micro/kernels/energy.cc \
../tflite/signal/micro/kernels/fft_auto_scale_common.cc \
../tflite/signal/micro/kernels/fft_auto_scale_kernel.cc \
../tflite/signal/micro/kernels/filter_bank.cc \
../tflite/signal/micro/kernels/filter_bank_log.cc \
../tflite/signal/micro/kernels/filter_bank_spectral_subtraction.cc \
../tflite/signal/micro/kernels/filter_bank_square_root.cc \
../tflite/signal/micro/kernels/filter_bank_square_root_common.cc \
../tflite/signal/micro/kernels/framer.cc \
../tflite/signal/micro/kernels/irfft.cc \
../tflite/signal/micro/kernels/overlap_add.cc \
../tflite/signal/micro/kernels/pcan.cc \
../tflite/signal/micro/kernels/rfft.cc \
../tflite/signal/micro/kernels/stacker.cc \
../tflite/signal/micro/kernels/window.cc 

CC_DEPS += \
./tflite/signal/micro/kernels/delay.d \
./tflite/signal/micro/kernels/energy.d \
./tflite/signal/micro/kernels/fft_auto_scale_common.d \
./tflite/signal/micro/kernels/fft_auto_scale_kernel.d \
./tflite/signal/micro/kernels/filter_bank.d \
./tflite/signal/micro/kernels/filter_bank_log.d \
./tflite/signal/micro/kernels/filter_bank_spectral_subtraction.d \
./tflite/signal/micro/kernels/filter_bank_square_root.d \
./tflite/signal/micro/kernels/filter_bank_square_root_common.d \
./tflite/signal/micro/kernels/framer.d \
./tflite/signal/micro/kernels/irfft.d \
./tflite/signal/micro/kernels/overlap_add.d \
./tflite/signal/micro/kernels/pcan.d \
./tflite/signal/micro/kernels/rfft.d \
./tflite/signal/micro/kernels/stacker.d \
./tflite/signal/micro/kernels/window.d 

OBJS += \
./tflite/signal/micro/kernels/delay.o \
./tflite/signal/micro/kernels/energy.o \
./tflite/signal/micro/kernels/fft_auto_scale_common.o \
./tflite/signal/micro/kernels/fft_auto_scale_kernel.o \
./tflite/signal/micro/kernels/filter_bank.o \
./tflite/signal/micro/kernels/filter_bank_log.o \
./tflite/signal/micro/kernels/filter_bank_spectral_subtraction.o \
./tflite/signal/micro/kernels/filter_bank_square_root.o \
./tflite/signal/micro/kernels/filter_bank_square_root_common.o \
./tflite/signal/micro/kernels/framer.o \
./tflite/signal/micro/kernels/irfft.o \
./tflite/signal/micro/kernels/overlap_add.o \
./tflite/signal/micro/kernels/pcan.o \
./tflite/signal/micro/kernels/rfft.o \
./tflite/signal/micro/kernels/stacker.o \
./tflite/signal/micro/kernels/window.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/signal/micro/kernels/%.o tflite/signal/micro/kernels/%.su tflite/signal/micro/kernels/%.cyclo: ../tflite/signal/micro/kernels/%.cc tflite/signal/micro/kernels/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G491xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/flatbuffers/include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/gemmlowp" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/ruy" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/kissfft" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/signal" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SVDFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SoftmaxFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/ReshapeFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/PoolingFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/tensorflow/lite/micro/kernels/cmsis_nn" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++17 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tflite-2f-signal-2f-micro-2f-kernels

clean-tflite-2f-signal-2f-micro-2f-kernels:
	-$(RM) ./tflite/signal/micro/kernels/delay.cyclo ./tflite/signal/micro/kernels/delay.d ./tflite/signal/micro/kernels/delay.o ./tflite/signal/micro/kernels/delay.su ./tflite/signal/micro/kernels/energy.cyclo ./tflite/signal/micro/kernels/energy.d ./tflite/signal/micro/kernels/energy.o ./tflite/signal/micro/kernels/energy.su ./tflite/signal/micro/kernels/fft_auto_scale_common.cyclo ./tflite/signal/micro/kernels/fft_auto_scale_common.d ./tflite/signal/micro/kernels/fft_auto_scale_common.o ./tflite/signal/micro/kernels/fft_auto_scale_common.su ./tflite/signal/micro/kernels/fft_auto_scale_kernel.cyclo ./tflite/signal/micro/kernels/fft_auto_scale_kernel.d ./tflite/signal/micro/kernels/fft_auto_scale_kernel.o ./tflite/signal/micro/kernels/fft_auto_scale_kernel.su ./tflite/signal/micro/kernels/filter_bank.cyclo ./tflite/signal/micro/kernels/filter_bank.d ./tflite/signal/micro/kernels/filter_bank.o ./tflite/signal/micro/kernels/filter_bank.su ./tflite/signal/micro/kernels/filter_bank_log.cyclo ./tflite/signal/micro/kernels/filter_bank_log.d ./tflite/signal/micro/kernels/filter_bank_log.o ./tflite/signal/micro/kernels/filter_bank_log.su ./tflite/signal/micro/kernels/filter_bank_spectral_subtraction.cyclo ./tflite/signal/micro/kernels/filter_bank_spectral_subtraction.d ./tflite/signal/micro/kernels/filter_bank_spectral_subtraction.o ./tflite/signal/micro/kernels/filter_bank_spectral_subtraction.su ./tflite/signal/micro/kernels/filter_bank_square_root.cyclo ./tflite/signal/micro/kernels/filter_bank_square_root.d ./tflite/signal/micro/kernels/filter_bank_square_root.o ./tflite/signal/micro/kernels/filter_bank_square_root.su ./tflite/signal/micro/kernels/filter_bank_square_root_common.cyclo ./tflite/signal/micro/kernels/filter_bank_square_root_common.d ./tflite/signal/micro/kernels/filter_bank_square_root_common.o ./tflite/signal/micro/kernels/filter_bank_square_root_common.su ./tflite/signal/micro/kernels/framer.cyclo ./tflite/signal/micro/kernels/framer.d ./tflite/signal/micro/kernels/framer.o ./tflite/signal/micro/kernels/framer.su ./tflite/signal/micro/kernels/irfft.cyclo ./tflite/signal/micro/kernels/irfft.d ./tflite/signal/micro/kernels/irfft.o ./tflite/signal/micro/kernels/irfft.su ./tflite/signal/micro/kernels/overlap_add.cyclo ./tflite/signal/micro/kernels/overlap_add.d ./tflite/signal/micro/kernels/overlap_add.o ./tflite/signal/micro/kernels/overlap_add.su ./tflite/signal/micro/kernels/pcan.cyclo ./tflite/signal/micro/kernels/pcan.d ./tflite/signal/micro/kernels/pcan.o ./tflite/signal/micro/kernels/pcan.su ./tflite/signal/micro/kernels/rfft.cyclo ./tflite/signal/micro/kernels/rfft.d ./tflite/signal/micro/kernels/rfft.o ./tflite/signal/micro/kernels/rfft.su ./tflite/signal/micro/kernels/stacker.cyclo ./tflite/signal/micro/kernels/stacker.d ./tflite/signal/micro/kernels/stacker.o ./tflite/signal/micro/kernels/stacker.su ./tflite/signal/micro/kernels/window.cyclo ./tflite/signal/micro/kernels/window.d ./tflite/signal/micro/kernels/window.o ./tflite/signal/micro/kernels/window.su

.PHONY: clean-tflite-2f-signal-2f-micro-2f-kernels

