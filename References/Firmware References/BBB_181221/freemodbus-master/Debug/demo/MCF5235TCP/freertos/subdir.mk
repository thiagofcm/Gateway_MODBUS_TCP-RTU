################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235TCP/freertos/croutine.c \
../demo/MCF5235TCP/freertos/list.c \
../demo/MCF5235TCP/freertos/queue.c \
../demo/MCF5235TCP/freertos/tasks.c 

OBJS += \
./demo/MCF5235TCP/freertos/croutine.o \
./demo/MCF5235TCP/freertos/list.o \
./demo/MCF5235TCP/freertos/queue.o \
./demo/MCF5235TCP/freertos/tasks.o 

C_DEPS += \
./demo/MCF5235TCP/freertos/croutine.d \
./demo/MCF5235TCP/freertos/list.d \
./demo/MCF5235TCP/freertos/queue.d \
./demo/MCF5235TCP/freertos/tasks.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235TCP/freertos/%.o: ../demo/MCF5235TCP/freertos/%.c demo/MCF5235TCP/freertos/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


