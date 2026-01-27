################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/blinky_d4.c \
../Src/syscalls.c \
../Src/sysmem.c 

OBJS += \
./Src/blinky_d4.o \
./Src/syscalls.o \
./Src/sysmem.o 

C_DEPS += \
./Src/blinky_d4.d \
./Src/syscalls.d \
./Src/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DNUCLEO_C031C6 -DSTM32 -DSTM32C0 -DSTM32C031C6Tx -DSTM32C031xx -c -I../Inc -I"C:/Users/chase/Documents/winter_2026/embedded_systems/ES28W26/Library/chipheaders/Device" -I"C:/Users/chase/Documents/winter_2026/embedded_systems/ES28W26/Library/chipheaders/Include" -I"C:/Users/chase/Documents/winter_2026/embedded_systems/ES28W26/Library/mylib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/blinky_d4.cyclo ./Src/blinky_d4.d ./Src/blinky_d4.o ./Src/blinky_d4.su ./Src/syscalls.cyclo ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.cyclo ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su

.PHONY: clean-Src

