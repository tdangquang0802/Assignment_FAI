################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/FreeRTOS-Kernel/portable/MemMang/heap_4.c 

OBJS += \
./ThirdParty/FreeRTOS-Kernel/portable/MemMang/heap_4.o 

C_DEPS += \
./ThirdParty/FreeRTOS-Kernel/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/FreeRTOS-Kernel/portable/MemMang/%.o ThirdParty/FreeRTOS-Kernel/portable/MemMang/%.su ThirdParty/FreeRTOS-Kernel/portable/MemMang/%.cyclo: ../ThirdParty/FreeRTOS-Kernel/portable/MemMang/%.c ThirdParty/FreeRTOS-Kernel/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"C:/Users/Quang Trung/STM32CubeIDE/workspace_1.19.0/FREERTOS_project/ThirdParty/FreeRTOS-Kernel" -I"C:/Users/Quang Trung/STM32CubeIDE/workspace_1.19.0/FREERTOS_project/ThirdParty/FreeRTOS-Kernel/include" -I"C:/Users/Quang Trung/STM32CubeIDE/workspace_1.19.0/FREERTOS_project/ThirdParty/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -I"C:/Users/Quang Trung/STM32CubeIDE/workspace_1.19.0/FREERTOS_project/ThirdParty/FreeRTOS-Kernel/portable/MemMang" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-FreeRTOS-2d-Kernel-2f-portable-2f-MemMang

clean-ThirdParty-2f-FreeRTOS-2d-Kernel-2f-portable-2f-MemMang:
	-$(RM) ./ThirdParty/FreeRTOS-Kernel/portable/MemMang/heap_4.cyclo ./ThirdParty/FreeRTOS-Kernel/portable/MemMang/heap_4.d ./ThirdParty/FreeRTOS-Kernel/portable/MemMang/heap_4.o ./ThirdParty/FreeRTOS-Kernel/portable/MemMang/heap_4.su

.PHONY: clean-ThirdParty-2f-FreeRTOS-2d-Kernel-2f-portable-2f-MemMang

