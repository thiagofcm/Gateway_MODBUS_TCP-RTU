################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/Z8ENCORE/demo.c 

OBJS += \
./demo/Z8ENCORE/demo.o 

C_DEPS += \
./demo/Z8ENCORE/demo.d 


# Each subdirectory must supply rules for building sources it contributes
demo/Z8ENCORE/%.o: ../demo/Z8ENCORE/%.c demo/Z8ENCORE/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


