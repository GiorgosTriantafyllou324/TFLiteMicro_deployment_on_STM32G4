################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tflite/tensorflow/lite/micro/debug_log.cc \
../tflite/tensorflow/lite/micro/fake_micro_context.cc \
../tflite/tensorflow/lite/micro/flatbuffer_utils.cc \
../tflite/tensorflow/lite/micro/memory_helpers.cc \
../tflite/tensorflow/lite/micro/micro_allocation_info.cc \
../tflite/tensorflow/lite/micro/micro_allocator.cc \
../tflite/tensorflow/lite/micro/micro_context.cc \
../tflite/tensorflow/lite/micro/micro_interpreter.cc \
../tflite/tensorflow/lite/micro/micro_interpreter_context.cc \
../tflite/tensorflow/lite/micro/micro_interpreter_graph.cc \
../tflite/tensorflow/lite/micro/micro_log.cc \
../tflite/tensorflow/lite/micro/micro_op_resolver.cc \
../tflite/tensorflow/lite/micro/micro_profiler.cc \
../tflite/tensorflow/lite/micro/micro_resource_variable.cc \
../tflite/tensorflow/lite/micro/micro_time.cc \
../tflite/tensorflow/lite/micro/micro_utils.cc \
../tflite/tensorflow/lite/micro/mock_micro_graph.cc \
../tflite/tensorflow/lite/micro/recording_micro_allocator.cc \
../tflite/tensorflow/lite/micro/system_setup.cc \
../tflite/tensorflow/lite/micro/test_helper_custom_ops.cc \
../tflite/tensorflow/lite/micro/test_helpers.cc 

CC_DEPS += \
./tflite/tensorflow/lite/micro/debug_log.d \
./tflite/tensorflow/lite/micro/fake_micro_context.d \
./tflite/tensorflow/lite/micro/flatbuffer_utils.d \
./tflite/tensorflow/lite/micro/memory_helpers.d \
./tflite/tensorflow/lite/micro/micro_allocation_info.d \
./tflite/tensorflow/lite/micro/micro_allocator.d \
./tflite/tensorflow/lite/micro/micro_context.d \
./tflite/tensorflow/lite/micro/micro_interpreter.d \
./tflite/tensorflow/lite/micro/micro_interpreter_context.d \
./tflite/tensorflow/lite/micro/micro_interpreter_graph.d \
./tflite/tensorflow/lite/micro/micro_log.d \
./tflite/tensorflow/lite/micro/micro_op_resolver.d \
./tflite/tensorflow/lite/micro/micro_profiler.d \
./tflite/tensorflow/lite/micro/micro_resource_variable.d \
./tflite/tensorflow/lite/micro/micro_time.d \
./tflite/tensorflow/lite/micro/micro_utils.d \
./tflite/tensorflow/lite/micro/mock_micro_graph.d \
./tflite/tensorflow/lite/micro/recording_micro_allocator.d \
./tflite/tensorflow/lite/micro/system_setup.d \
./tflite/tensorflow/lite/micro/test_helper_custom_ops.d \
./tflite/tensorflow/lite/micro/test_helpers.d 

OBJS += \
./tflite/tensorflow/lite/micro/debug_log.o \
./tflite/tensorflow/lite/micro/fake_micro_context.o \
./tflite/tensorflow/lite/micro/flatbuffer_utils.o \
./tflite/tensorflow/lite/micro/memory_helpers.o \
./tflite/tensorflow/lite/micro/micro_allocation_info.o \
./tflite/tensorflow/lite/micro/micro_allocator.o \
./tflite/tensorflow/lite/micro/micro_context.o \
./tflite/tensorflow/lite/micro/micro_interpreter.o \
./tflite/tensorflow/lite/micro/micro_interpreter_context.o \
./tflite/tensorflow/lite/micro/micro_interpreter_graph.o \
./tflite/tensorflow/lite/micro/micro_log.o \
./tflite/tensorflow/lite/micro/micro_op_resolver.o \
./tflite/tensorflow/lite/micro/micro_profiler.o \
./tflite/tensorflow/lite/micro/micro_resource_variable.o \
./tflite/tensorflow/lite/micro/micro_time.o \
./tflite/tensorflow/lite/micro/micro_utils.o \
./tflite/tensorflow/lite/micro/mock_micro_graph.o \
./tflite/tensorflow/lite/micro/recording_micro_allocator.o \
./tflite/tensorflow/lite/micro/system_setup.o \
./tflite/tensorflow/lite/micro/test_helper_custom_ops.o \
./tflite/tensorflow/lite/micro/test_helpers.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/tensorflow/lite/micro/%.o tflite/tensorflow/lite/micro/%.su tflite/tensorflow/lite/micro/%.cyclo: ../tflite/tensorflow/lite/micro/%.cc tflite/tensorflow/lite/micro/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G491xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/flatbuffers/include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/gemmlowp" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/ruy" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/kissfft" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/signal" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SVDFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/SoftmaxFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/ReshapeFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Source/PoolingFunctions" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/third_party/cmsis_nn/Include" -I"C:/Users/giorg/Desktop/opt_micro_tflite/opt_micro_tflite/tflite/tensorflow/lite/micro/kernels/cmsis_nn" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++17 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tflite-2f-tensorflow-2f-lite-2f-micro

clean-tflite-2f-tensorflow-2f-lite-2f-micro:
	-$(RM) ./tflite/tensorflow/lite/micro/debug_log.cyclo ./tflite/tensorflow/lite/micro/debug_log.d ./tflite/tensorflow/lite/micro/debug_log.o ./tflite/tensorflow/lite/micro/debug_log.su ./tflite/tensorflow/lite/micro/fake_micro_context.cyclo ./tflite/tensorflow/lite/micro/fake_micro_context.d ./tflite/tensorflow/lite/micro/fake_micro_context.o ./tflite/tensorflow/lite/micro/fake_micro_context.su ./tflite/tensorflow/lite/micro/flatbuffer_utils.cyclo ./tflite/tensorflow/lite/micro/flatbuffer_utils.d ./tflite/tensorflow/lite/micro/flatbuffer_utils.o ./tflite/tensorflow/lite/micro/flatbuffer_utils.su ./tflite/tensorflow/lite/micro/memory_helpers.cyclo ./tflite/tensorflow/lite/micro/memory_helpers.d ./tflite/tensorflow/lite/micro/memory_helpers.o ./tflite/tensorflow/lite/micro/memory_helpers.su ./tflite/tensorflow/lite/micro/micro_allocation_info.cyclo ./tflite/tensorflow/lite/micro/micro_allocation_info.d ./tflite/tensorflow/lite/micro/micro_allocation_info.o ./tflite/tensorflow/lite/micro/micro_allocation_info.su ./tflite/tensorflow/lite/micro/micro_allocator.cyclo ./tflite/tensorflow/lite/micro/micro_allocator.d ./tflite/tensorflow/lite/micro/micro_allocator.o ./tflite/tensorflow/lite/micro/micro_allocator.su ./tflite/tensorflow/lite/micro/micro_context.cyclo ./tflite/tensorflow/lite/micro/micro_context.d ./tflite/tensorflow/lite/micro/micro_context.o ./tflite/tensorflow/lite/micro/micro_context.su ./tflite/tensorflow/lite/micro/micro_interpreter.cyclo ./tflite/tensorflow/lite/micro/micro_interpreter.d ./tflite/tensorflow/lite/micro/micro_interpreter.o ./tflite/tensorflow/lite/micro/micro_interpreter.su ./tflite/tensorflow/lite/micro/micro_interpreter_context.cyclo ./tflite/tensorflow/lite/micro/micro_interpreter_context.d ./tflite/tensorflow/lite/micro/micro_interpreter_context.o ./tflite/tensorflow/lite/micro/micro_interpreter_context.su ./tflite/tensorflow/lite/micro/micro_interpreter_graph.cyclo ./tflite/tensorflow/lite/micro/micro_interpreter_graph.d ./tflite/tensorflow/lite/micro/micro_interpreter_graph.o ./tflite/tensorflow/lite/micro/micro_interpreter_graph.su ./tflite/tensorflow/lite/micro/micro_log.cyclo ./tflite/tensorflow/lite/micro/micro_log.d ./tflite/tensorflow/lite/micro/micro_log.o ./tflite/tensorflow/lite/micro/micro_log.su ./tflite/tensorflow/lite/micro/micro_op_resolver.cyclo ./tflite/tensorflow/lite/micro/micro_op_resolver.d ./tflite/tensorflow/lite/micro/micro_op_resolver.o ./tflite/tensorflow/lite/micro/micro_op_resolver.su ./tflite/tensorflow/lite/micro/micro_profiler.cyclo ./tflite/tensorflow/lite/micro/micro_profiler.d ./tflite/tensorflow/lite/micro/micro_profiler.o ./tflite/tensorflow/lite/micro/micro_profiler.su ./tflite/tensorflow/lite/micro/micro_resource_variable.cyclo ./tflite/tensorflow/lite/micro/micro_resource_variable.d ./tflite/tensorflow/lite/micro/micro_resource_variable.o ./tflite/tensorflow/lite/micro/micro_resource_variable.su ./tflite/tensorflow/lite/micro/micro_time.cyclo ./tflite/tensorflow/lite/micro/micro_time.d ./tflite/tensorflow/lite/micro/micro_time.o ./tflite/tensorflow/lite/micro/micro_time.su ./tflite/tensorflow/lite/micro/micro_utils.cyclo ./tflite/tensorflow/lite/micro/micro_utils.d ./tflite/tensorflow/lite/micro/micro_utils.o ./tflite/tensorflow/lite/micro/micro_utils.su ./tflite/tensorflow/lite/micro/mock_micro_graph.cyclo ./tflite/tensorflow/lite/micro/mock_micro_graph.d ./tflite/tensorflow/lite/micro/mock_micro_graph.o ./tflite/tensorflow/lite/micro/mock_micro_graph.su ./tflite/tensorflow/lite/micro/recording_micro_allocator.cyclo ./tflite/tensorflow/lite/micro/recording_micro_allocator.d ./tflite/tensorflow/lite/micro/recording_micro_allocator.o ./tflite/tensorflow/lite/micro/recording_micro_allocator.su ./tflite/tensorflow/lite/micro/system_setup.cyclo ./tflite/tensorflow/lite/micro/system_setup.d ./tflite/tensorflow/lite/micro/system_setup.o ./tflite/tensorflow/lite/micro/system_setup.su ./tflite/tensorflow/lite/micro/test_helper_custom_ops.cyclo ./tflite/tensorflow/lite/micro/test_helper_custom_ops.d ./tflite/tensorflow/lite/micro/test_helper_custom_ops.o ./tflite/tensorflow/lite/micro/test_helper_custom_ops.su ./tflite/tensorflow/lite/micro/test_helpers.cyclo ./tflite/tensorflow/lite/micro/test_helpers.d ./tflite/tensorflow/lite/micro/test_helpers.o ./tflite/tensorflow/lite/micro/test_helpers.su

.PHONY: clean-tflite-2f-tensorflow-2f-lite-2f-micro

