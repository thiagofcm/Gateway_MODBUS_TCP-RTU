################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XTCP/demo.c 

OBJS += \
./demo/STR71XTCP/demo.o 

C_DEPS += \
./demo/STR71XTCP/demo.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XTCP/%.o: ../demo/STR71XTCP/%.c demo/STR71XTCP/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


