################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71X/freertos/list.c \
../demo/STR71X/freertos/queue.c \
../demo/STR71X/freertos/tasks.c 

OBJS += \
./demo/STR71X/freertos/list.o \
./demo/STR71X/freertos/queue.o \
./demo/STR71X/freertos/tasks.o 

C_DEPS += \
./demo/STR71X/freertos/list.d \
./demo/STR71X/freertos/queue.d \
./demo/STR71X/freertos/tasks.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71X/freertos/%.o: ../demo/STR71X/freertos/%.c demo/STR71X/freertos/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


