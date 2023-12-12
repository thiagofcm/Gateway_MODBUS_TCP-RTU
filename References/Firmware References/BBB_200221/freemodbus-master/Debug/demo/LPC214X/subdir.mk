################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/LPC214X/demo.c 

OBJS += \
./demo/LPC214X/demo.o 

C_DEPS += \
./demo/LPC214X/demo.d 


# Each subdirectory must supply rules for building sources it contributes
demo/LPC214X/%.o: ../demo/LPC214X/%.c demo/LPC214X/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


