################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/ATSAM3S_FREERTOS/libraries/drivers/crccu/crccu.c 

OBJS += \
./demo/ATSAM3S_FREERTOS/libraries/drivers/crccu/crccu.o 

C_DEPS += \
./demo/ATSAM3S_FREERTOS/libraries/drivers/crccu/crccu.d 


# Each subdirectory must supply rules for building sources it contributes
demo/ATSAM3S_FREERTOS/libraries/drivers/crccu/%.o: ../demo/ATSAM3S_FREERTOS/libraries/drivers/crccu/%.c demo/ATSAM3S_FREERTOS/libraries/drivers/crccu/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


