################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/ATSAM3S_FREERTOS/freertos/croutine.c \
../demo/ATSAM3S_FREERTOS/freertos/list.c \
../demo/ATSAM3S_FREERTOS/freertos/queue.c \
../demo/ATSAM3S_FREERTOS/freertos/tasks.c 

OBJS += \
./demo/ATSAM3S_FREERTOS/freertos/croutine.o \
./demo/ATSAM3S_FREERTOS/freertos/list.o \
./demo/ATSAM3S_FREERTOS/freertos/queue.o \
./demo/ATSAM3S_FREERTOS/freertos/tasks.o 

C_DEPS += \
./demo/ATSAM3S_FREERTOS/freertos/croutine.d \
./demo/ATSAM3S_FREERTOS/freertos/list.d \
./demo/ATSAM3S_FREERTOS/freertos/queue.d \
./demo/ATSAM3S_FREERTOS/freertos/tasks.d 


# Each subdirectory must supply rules for building sources it contributes
demo/ATSAM3S_FREERTOS/freertos/%.o: ../demo/ATSAM3S_FREERTOS/freertos/%.c demo/ATSAM3S_FREERTOS/freertos/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


