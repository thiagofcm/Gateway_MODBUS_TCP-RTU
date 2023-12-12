################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235TCP/demo.c 

OBJS += \
./demo/MCF5235TCP/demo.o 

C_DEPS += \
./demo/MCF5235TCP/demo.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235TCP/%.o: ../demo/MCF5235TCP/%.c demo/MCF5235TCP/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


