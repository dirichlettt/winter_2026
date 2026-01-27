################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Startup/startup_stm32c031c6tx.s 

OBJS += \
./Startup/startup_stm32c031c6tx.o 

S_DEPS += \
./Startup/startup_stm32c031c6tx.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.s Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m0plus -g3 -DDEBUG -c -I"/home/puppygirl-dirac/Documents/coursework/winter_2026/ES28W26/Library/chipheaders/Device" -I"/home/puppygirl-dirac/Documents/coursework/winter_2026/ES28W26/Library/chipheaders/Include" -I"/home/puppygirl-dirac/Documents/coursework/winter_2026/ES28W26/Library/mylib" -I"/home/puppygirl-dirac/Documents/coursework/winter_2026/ES28W26/Library" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-Startup

clean-Startup:
	-$(RM) ./Startup/startup_stm32c031c6tx.d ./Startup/startup_stm32c031c6tx.o

.PHONY: clean-Startup

