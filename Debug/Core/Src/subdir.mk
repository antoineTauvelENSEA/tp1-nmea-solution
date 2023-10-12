################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/cityDataBase.c \
../Core/Src/fonts.c \
../Core/Src/main.c \
../Core/Src/ssd1315.c \
../Core/Src/ssd1315_physical_layer_i2c.c \
../Core/Src/ssd1315_string.c \
../Core/Src/stm32l4xx_hal_msp.c \
../Core/Src/stm32l4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32l4xx.c \
../Core/Src/tp1.c \
../Core/Src/utils.c 

OBJS += \
./Core/Src/cityDataBase.o \
./Core/Src/fonts.o \
./Core/Src/main.o \
./Core/Src/ssd1315.o \
./Core/Src/ssd1315_physical_layer_i2c.o \
./Core/Src/ssd1315_string.o \
./Core/Src/stm32l4xx_hal_msp.o \
./Core/Src/stm32l4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32l4xx.o \
./Core/Src/tp1.o \
./Core/Src/utils.o 

C_DEPS += \
./Core/Src/cityDataBase.d \
./Core/Src/fonts.d \
./Core/Src/main.d \
./Core/Src/ssd1315.d \
./Core/Src/ssd1315_physical_layer_i2c.d \
./Core/Src/ssd1315_string.d \
./Core/Src/stm32l4xx_hal_msp.d \
./Core/Src/stm32l4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32l4xx.d \
./Core/Src/tp1.d \
./Core/Src/utils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/cityDataBase.cyclo ./Core/Src/cityDataBase.d ./Core/Src/cityDataBase.o ./Core/Src/cityDataBase.su ./Core/Src/fonts.cyclo ./Core/Src/fonts.d ./Core/Src/fonts.o ./Core/Src/fonts.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/ssd1315.cyclo ./Core/Src/ssd1315.d ./Core/Src/ssd1315.o ./Core/Src/ssd1315.su ./Core/Src/ssd1315_physical_layer_i2c.cyclo ./Core/Src/ssd1315_physical_layer_i2c.d ./Core/Src/ssd1315_physical_layer_i2c.o ./Core/Src/ssd1315_physical_layer_i2c.su ./Core/Src/ssd1315_string.cyclo ./Core/Src/ssd1315_string.d ./Core/Src/ssd1315_string.o ./Core/Src/ssd1315_string.su ./Core/Src/stm32l4xx_hal_msp.cyclo ./Core/Src/stm32l4xx_hal_msp.d ./Core/Src/stm32l4xx_hal_msp.o ./Core/Src/stm32l4xx_hal_msp.su ./Core/Src/stm32l4xx_it.cyclo ./Core/Src/stm32l4xx_it.d ./Core/Src/stm32l4xx_it.o ./Core/Src/stm32l4xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32l4xx.cyclo ./Core/Src/system_stm32l4xx.d ./Core/Src/system_stm32l4xx.o ./Core/Src/system_stm32l4xx.su ./Core/Src/tp1.cyclo ./Core/Src/tp1.d ./Core/Src/tp1.o ./Core/Src/tp1.su ./Core/Src/utils.cyclo ./Core/Src/utils.d ./Core/Src/utils.o ./Core/Src/utils.su

.PHONY: clean-Core-2f-Src

