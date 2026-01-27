################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/puppygirl-dirac/Documents/coursework/winter_2026/ES28W26/Library/mylib/sysinit.c 

OBJS += \
./Library/mylib/sysinit.o 

C_DEPS += \
./Library/mylib/sysinit.d 


# Each subdirectory must supply rules for building sources it contributes
Library/mylib/sysinit.o: /home/puppygirl-dirac/Documents/coursework/winter_2026/ES28W26/Library/mylib/sysinit.c Library/mylib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DNUCLEO_C031C6 -DSTM32 -DSTM32C0 -DSTM32C031C6Tx -DSTM32C031xx -c -I../Inc -I"/home/puppygirl-dirac/Documents/coursework/winter_2026/ES28W26/Library/chipheaders/Device" -I"/home/puppygirl-dirac/Documents/coursework/winter_2026/ES28W26/Library/chipheaders/Include" -I"/home/puppygirl-dirac/Documents/coursework/winter_2026/ES28W26/Library/mylib" -I"/home/puppygirl-dirac/Documents/coursework/winter_2026/ES28W26/Library" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Library-2f-mylib

clean-Library-2f-mylib:
	-$(RM) ./Library/mylib/sysinit.cyclo ./Library/mylib/sysinit.d ./Library/mylib/sysinit.o ./Library/mylib/sysinit.su

.PHONY: clean-Library-2f-mylib

