################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/AT91SAM7X_ROWLEY/FreeRTOS/portable/GCC/ARM7_AT91SAM7S/port.c \
../demo/AT91SAM7X_ROWLEY/FreeRTOS/portable/GCC/ARM7_AT91SAM7S/portISR.c 

OBJS += \
./demo/AT91SAM7X_ROWLEY/FreeRTOS/portable/GCC/ARM7_AT91SAM7S/port.o \
./demo/AT91SAM7X_ROWLEY/FreeRTOS/portable/GCC/ARM7_AT91SAM7S/portISR.o 

C_DEPS += \
./demo/AT91SAM7X_ROWLEY/FreeRTOS/portable/GCC/ARM7_AT91SAM7S/port.d \
./demo/AT91SAM7X_ROWLEY/FreeRTOS/portable/GCC/ARM7_AT91SAM7S/portISR.d 


# Each subdirectory must supply rules for building sources it contributes
demo/AT91SAM7X_ROWLEY/FreeRTOS/portable/GCC/ARM7_AT91SAM7S/%.o: ../demo/AT91SAM7X_ROWLEY/FreeRTOS/portable/GCC/ARM7_AT91SAM7S/%.c demo/AT91SAM7X_ROWLEY/FreeRTOS/portable/GCC/ARM7_AT91SAM7S/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


