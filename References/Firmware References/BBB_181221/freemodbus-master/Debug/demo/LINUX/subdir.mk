################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/LINUX/demo.c 

OBJS += \
./demo/LINUX/demo.o 

C_DEPS += \
./demo/LINUX/demo.d 


# Each subdirectory must supply rules for building sources it contributes
demo/LINUX/%.o: ../demo/LINUX/%.c demo/LINUX/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


