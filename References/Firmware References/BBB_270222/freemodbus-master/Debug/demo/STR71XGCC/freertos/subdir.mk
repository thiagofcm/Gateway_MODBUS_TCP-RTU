################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XGCC/freertos/croutine.c \
../demo/STR71XGCC/freertos/list.c \
../demo/STR71XGCC/freertos/queue.c \
../demo/STR71XGCC/freertos/tasks.c 

OBJS += \
./demo/STR71XGCC/freertos/croutine.o \
./demo/STR71XGCC/freertos/list.o \
./demo/STR71XGCC/freertos/queue.o \
./demo/STR71XGCC/freertos/tasks.o 

C_DEPS += \
./demo/STR71XGCC/freertos/croutine.d \
./demo/STR71XGCC/freertos/list.d \
./demo/STR71XGCC/freertos/queue.d \
./demo/STR71XGCC/freertos/tasks.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XGCC/freertos/%.o: ../demo/STR71XGCC/freertos/%.c demo/STR71XGCC/freertos/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


