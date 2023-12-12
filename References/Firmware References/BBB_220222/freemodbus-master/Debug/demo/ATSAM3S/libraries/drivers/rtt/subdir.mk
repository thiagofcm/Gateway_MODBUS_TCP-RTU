################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/ATSAM3S/libraries/drivers/rtt/rtt.c 

OBJS += \
./demo/ATSAM3S/libraries/drivers/rtt/rtt.o 

C_DEPS += \
./demo/ATSAM3S/libraries/drivers/rtt/rtt.d 


# Each subdirectory must supply rules for building sources it contributes
demo/ATSAM3S/libraries/drivers/rtt/%.o: ../demo/ATSAM3S/libraries/drivers/rtt/%.c demo/ATSAM3S/libraries/drivers/rtt/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


