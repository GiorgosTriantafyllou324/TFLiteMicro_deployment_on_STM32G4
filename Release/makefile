################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include tflite/third_party/kissfft/tools/subdir.mk
-include tflite/third_party/kissfft/subdir.mk
-include tflite/third_party/cmsis_nn/Source/SoftmaxFunctions/subdir.mk
-include tflite/third_party/cmsis_nn/Source/SVDFunctions/subdir.mk
-include tflite/third_party/cmsis_nn/Source/ReshapeFunctions/subdir.mk
-include tflite/third_party/cmsis_nn/Source/PoolingFunctions/subdir.mk
-include tflite/third_party/cmsis_nn/Source/NNSupportFunctions/subdir.mk
-include tflite/third_party/cmsis_nn/Source/LSTMFunctions/subdir.mk
-include tflite/third_party/cmsis_nn/Source/FullyConnectedFunctions/subdir.mk
-include tflite/third_party/cmsis_nn/Source/ConvolutionFunctions/subdir.mk
-include tflite/third_party/cmsis_nn/Source/ConcatenationFunctions/subdir.mk
-include tflite/third_party/cmsis_nn/Source/BasicMathFunctions/subdir.mk
-include tflite/third_party/cmsis_nn/Source/ActivationFunctions/subdir.mk
-include tflite/tensorflow/lite/schema/subdir.mk
-include tflite/tensorflow/lite/micro/tflite_bridge/subdir.mk
-include tflite/tensorflow/lite/micro/memory_planner/subdir.mk
-include tflite/tensorflow/lite/micro/kernels/cmsis_nn/subdir.mk
-include tflite/tensorflow/lite/micro/kernels/subdir.mk
-include tflite/tensorflow/lite/micro/arena_allocator/subdir.mk
-include tflite/tensorflow/lite/micro/subdir.mk
-include tflite/tensorflow/lite/kernels/internal/reference/subdir.mk
-include tflite/tensorflow/lite/kernels/internal/subdir.mk
-include tflite/tensorflow/lite/kernels/subdir.mk
-include tflite/tensorflow/lite/core/c/subdir.mk
-include tflite/tensorflow/lite/core/api/subdir.mk
-include tflite/signal/src/kiss_fft_wrappers/subdir.mk
-include tflite/signal/src/subdir.mk
-include tflite/signal/micro/kernels/subdir.mk
-include Drivers/STM32G4xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(CCM_DEPS)),)
-include $(CCM_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CXXM_DEPS)),)
-include $(CXXM_DEPS)
endif
ifneq ($(strip $(C++M_DEPS)),)
-include $(C++M_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := micro_tflite
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
micro_tflite.elf \

MAP_FILES += \
micro_tflite.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
micro_tflite.list \


# All Target
all: main-build

# Main-build Target
main-build: micro_tflite.elf secondary-outputs

# Tool invocations
micro_tflite.elf micro_tflite.map: $(OBJS) $(USER_OBJS) C:\Users\giorg\Desktop\opt_micro_tflite\STM32G491RETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-g++ -o "micro_tflite.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\giorg\Desktop\opt_micro_tflite\STM32G491RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="micro_tflite.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -u _printf_float -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

micro_tflite.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "micro_tflite.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) default.size.stdout micro_tflite.elf micro_tflite.list micro_tflite.map
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
