################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/BARE/demo.c 

OBJS += \
./demo/BARE/demo.o 

C_DEPS += \
./demo/BARE/demo.d 


# Each subdirectory must supply rules for building sources it contributes
demo/BARE/%.o: ../demo/BARE/%.c demo/BARE/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


