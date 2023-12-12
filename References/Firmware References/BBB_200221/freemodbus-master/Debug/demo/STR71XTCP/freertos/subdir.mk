################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XTCP/freertos/croutine.c \
../demo/STR71XTCP/freertos/list.c \
../demo/STR71XTCP/freertos/queue.c \
../demo/STR71XTCP/freertos/tasks.c 

OBJS += \
./demo/STR71XTCP/freertos/croutine.o \
./demo/STR71XTCP/freertos/list.o \
./demo/STR71XTCP/freertos/queue.o \
./demo/STR71XTCP/freertos/tasks.o 

C_DEPS += \
./demo/STR71XTCP/freertos/croutine.d \
./demo/STR71XTCP/freertos/list.d \
./demo/STR71XTCP/freertos/queue.d \
./demo/STR71XTCP/freertos/tasks.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XTCP/freertos/%.o: ../demo/STR71XTCP/freertos/%.c demo/STR71XTCP/freertos/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


