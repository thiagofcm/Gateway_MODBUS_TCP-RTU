################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/HCS08/demo.c 

OBJS += \
./demo/HCS08/demo.o 

C_DEPS += \
./demo/HCS08/demo.d 


# Each subdirectory must supply rules for building sources it contributes
demo/HCS08/%.o: ../demo/HCS08/%.c demo/HCS08/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


