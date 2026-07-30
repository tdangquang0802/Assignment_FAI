################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/FreeRTOS-Kernel/croutine.c \
../ThirdParty/FreeRTOS-Kernel/event_groups.c \
../ThirdParty/FreeRTOS-Kernel/list.c \
../ThirdParty/FreeRTOS-Kernel/queue.c \
../ThirdParty/FreeRTOS-Kernel/stream_buffer.c \
../ThirdParty/FreeRTOS-Kernel/tasks.c \
../ThirdParty/FreeRTOS-Kernel/timers.c 

OBJS += \
./ThirdParty/FreeRTOS-Kernel/croutine.o \
./ThirdParty/FreeRTOS-Kernel/event_groups.o \
./ThirdParty/FreeRTOS-Kernel/list.o \
./ThirdParty/FreeRTOS-Kernel/queue.o \
./ThirdParty/FreeRTOS-Kernel/stream_buffer.o \
./ThirdParty/FreeRTOS-Kernel/tasks.o \
./ThirdParty/FreeRTOS-Kernel/timers.o 

C_DEPS += \
./ThirdParty/FreeRTOS-Kernel/croutine.d \
./ThirdParty/FreeRTOS-Kernel/event_groups.d \
./ThirdParty/FreeRTOS-Kernel/list.d \
./ThirdParty/FreeRTOS-Kernel/queue.d \
./ThirdParty/FreeRTOS-Kernel/stream_buffer.d \
./ThirdParty/FreeRTOS-Kernel/tasks.d \
./ThirdParty/FreeRTOS-Kernel/timers.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/FreeRTOS-Kernel/%.o ThirdParty/FreeRTOS-Kernel/%.su ThirdParty/FreeRTOS-Kernel/%.cyclo: ../ThirdParty/FreeRTOS-Kernel/%.c ThirdParty/FreeRTOS-Kernel/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"C:/Users/Quang Trung/STM32CubeIDE/workspace_1.19.0/FREERTOS_project/ThirdParty/FreeRTOS-Kernel" -I"C:/Users/Quang Trung/STM32CubeIDE/workspace_1.19.0/FREERTOS_project/ThirdParty/FreeRTOS-Kernel/include" -I"C:/Users/Quang Trung/STM32CubeIDE/workspace_1.19.0/FREERTOS_project/ThirdParty/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -I"C:/Users/Quang Trung/STM32CubeIDE/workspace_1.19.0/FREERTOS_project/ThirdParty/FreeRTOS-Kernel/portable/MemMang" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-FreeRTOS-2d-Kernel

clean-ThirdParty-2f-FreeRTOS-2d-Kernel:
	-$(RM) ./ThirdParty/FreeRTOS-Kernel/croutine.cyclo ./ThirdParty/FreeRTOS-Kernel/croutine.d ./ThirdParty/FreeRTOS-Kernel/croutine.o ./ThirdParty/FreeRTOS-Kernel/croutine.su ./ThirdParty/FreeRTOS-Kernel/event_groups.cyclo ./ThirdParty/FreeRTOS-Kernel/event_groups.d ./ThirdParty/FreeRTOS-Kernel/event_groups.o ./ThirdParty/FreeRTOS-Kernel/event_groups.su ./ThirdParty/FreeRTOS-Kernel/list.cyclo ./ThirdParty/FreeRTOS-Kernel/list.d ./ThirdParty/FreeRTOS-Kernel/list.o ./ThirdParty/FreeRTOS-Kernel/list.su ./ThirdParty/FreeRTOS-Kernel/queue.cyclo ./ThirdParty/FreeRTOS-Kernel/queue.d ./ThirdParty/FreeRTOS-Kernel/queue.o ./ThirdParty/FreeRTOS-Kernel/queue.su ./ThirdParty/FreeRTOS-Kernel/stream_buffer.cyclo ./ThirdParty/FreeRTOS-Kernel/stream_buffer.d ./ThirdParty/FreeRTOS-Kernel/stream_buffer.o ./ThirdParty/FreeRTOS-Kernel/stream_buffer.su ./ThirdParty/FreeRTOS-Kernel/tasks.cyclo ./ThirdParty/FreeRTOS-Kernel/tasks.d ./ThirdParty/FreeRTOS-Kernel/tasks.o ./ThirdParty/FreeRTOS-Kernel/tasks.su ./ThirdParty/FreeRTOS-Kernel/timers.cyclo ./ThirdParty/FreeRTOS-Kernel/timers.d ./ThirdParty/FreeRTOS-Kernel/timers.o ./ThirdParty/FreeRTOS-Kernel/timers.su

.PHONY: clean-ThirdParty-2f-FreeRTOS-2d-Kernel

