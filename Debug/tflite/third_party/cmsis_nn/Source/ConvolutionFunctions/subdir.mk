################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4_fast.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_fast_s16.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s16.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s4.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s8.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s16.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s4.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s8.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s4.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s16.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s4.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s8.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s16.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4_opt.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s4.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s4_s16.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_get_buffer_sizes_s8.c \
../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_s8.c 

C_DEPS += \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4_fast.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_fast_s16.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s16.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s4.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s8.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s16.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s4.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s8.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s4.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s16.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s4.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s8.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s16.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4_opt.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s4.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s4_s16.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_get_buffer_sizes_s8.d \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_s8.d 

OBJS += \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4_fast.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_fast_s16.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s16.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s4.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s8.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s16.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s4.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s8.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s4.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s16.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s4.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s8.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s16.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4_opt.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s4.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s4_s16.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_get_buffer_sizes_s8.o \
./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_s8.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/%.o tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/%.su tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/%.cyclo: ../tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/%.c tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G491xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/flatbuffers/include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/gemmlowp" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/ruy" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/kissfft" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/signal" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SVDFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SoftmaxFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/ReshapeFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/PoolingFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/tensorflow/lite/micro/kernels/cmsis_nn" -O0 -ffunction-sections -fdata-sections -Wall -std=c++17 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tflite-2f-third_party-2f-cmsis_nn-2f-Source-2f-ConvolutionFunctions

clean-tflite-2f-third_party-2f-cmsis_nn-2f-Source-2f-ConvolutionFunctions:
	-$(RM) ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4_fast.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4_fast.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4_fast.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s4_fast.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_fast_s16.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_fast_s16.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_fast_s16.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_fast_s16.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s16.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s16.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s16.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s16.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s4.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s4.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s4.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s4.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s8.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s8.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s8.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s8.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s16.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s16.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s16.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s16.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s4.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s4.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s4.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s4.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s8.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s8.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s8.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_s8.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s4.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s4.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s4.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s4.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s16.cyclo
	-$(RM) ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s16.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s16.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s16.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s4.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s4.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s4.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s4.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s8.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s8.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s8.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s8.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s16.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s16.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s16.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s16.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4_opt.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4_opt.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4_opt.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s4_opt.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s4.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s4.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s4.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s4.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s4_s16.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s4_s16.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s4_s16.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s4_s16.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_get_buffer_sizes_s8.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_get_buffer_sizes_s8.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_get_buffer_sizes_s8.o ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_get_buffer_sizes_s8.su ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_s8.cyclo ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_s8.d ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_s8.o
	-$(RM) ./tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/arm_transpose_conv_s8.su

.PHONY: clean-tflite-2f-third_party-2f-cmsis_nn-2f-Source-2f-ConvolutionFunctions

