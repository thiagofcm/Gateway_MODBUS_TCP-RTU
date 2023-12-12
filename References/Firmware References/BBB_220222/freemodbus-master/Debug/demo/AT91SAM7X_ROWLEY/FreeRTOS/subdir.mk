################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/AT91SAM7X_ROWLEY/FreeRTOS/croutine.c \
../demo/AT91SAM7X_ROWLEY/FreeRTOS/list.c \
../demo/AT91SAM7X_ROWLEY/FreeRTOS/queue.c \
../demo/AT91SAM7X_ROWLEY/FreeRTOS/tasks.c 

OBJS += \
./demo/AT91SAM7X_ROWLEY/FreeRTOS/croutine.o \
./demo/AT91SAM7X_ROWLEY/FreeRTOS/list.o \
./demo/AT91SAM7X_ROWLEY/FreeRTOS/queue.o \
./demo/AT91SAM7X_ROWLEY/FreeRTOS/tasks.o 

C_DEPS += \
./demo/AT91SAM7X_ROWLEY/FreeRTOS/croutine.d \
./demo/AT91SAM7X_ROWLEY/FreeRTOS/list.d \
./demo/AT91SAM7X_ROWLEY/FreeRTOS/queue.d \
./demo/AT91SAM7X_ROWLEY/FreeRTOS/tasks.d 


# Each subdirectory must supply rules for building sources it contributes
demo/AT91SAM7X_ROWLEY/FreeRTOS/%.o: ../demo/AT91SAM7X_ROWLEY/FreeRTOS/%.c demo/AT91SAM7X_ROWLEY/FreeRTOS/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


