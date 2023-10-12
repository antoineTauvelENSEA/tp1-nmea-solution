################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/stm32-ssd1315-main/ssd1315.c 

OBJS += \
./Core/Src/stm32-ssd1315-main/ssd1315.o 

C_DEPS += \
./Core/Src/stm32-ssd1315-main/ssd1315.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/stm32-ssd1315-main/%.o Core/Src/stm32-ssd1315-main/%.su Core/Src/stm32-ssd1315-main/%.cyclo: ../Core/Src/stm32-ssd1315-main/%.c Core/Src/stm32-ssd1315-main/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-stm32-2d-ssd1315-2d-main

clean-Core-2f-Src-2f-stm32-2d-ssd1315-2d-main:
	-$(RM) ./Core/Src/stm32-ssd1315-main/ssd1315.cyclo ./Core/Src/stm32-ssd1315-main/ssd1315.d ./Core/Src/stm32-ssd1315-main/ssd1315.o ./Core/Src/stm32-ssd1315-main/ssd1315.su

.PHONY: clean-Core-2f-Src-2f-stm32-2d-ssd1315-2d-main

