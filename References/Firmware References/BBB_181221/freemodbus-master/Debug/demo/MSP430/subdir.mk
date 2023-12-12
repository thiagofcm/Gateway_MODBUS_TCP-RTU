################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MSP430/demo.c 

OBJS += \
./demo/MSP430/demo.o 

C_DEPS += \
./demo/MSP430/demo.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MSP430/%.o: ../demo/MSP430/%.c demo/MSP430/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


