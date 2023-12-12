################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235CW/system/hwinit.c \
../demo/MCF5235CW/system/interrupts.c 

OBJS += \
./demo/MCF5235CW/system/hwinit.o \
./demo/MCF5235CW/system/interrupts.o 

C_DEPS += \
./demo/MCF5235CW/system/hwinit.d \
./demo/MCF5235CW/system/interrupts.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235CW/system/%.o: ../demo/MCF5235CW/system/%.c demo/MCF5235CW/system/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


