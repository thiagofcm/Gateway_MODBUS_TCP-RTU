################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/ATSAM3S_FREERTOS/libraries/drivers/twi/twi.c \
../demo/ATSAM3S_FREERTOS/libraries/drivers/twi/twid.c 

OBJS += \
./demo/ATSAM3S_FREERTOS/libraries/drivers/twi/twi.o \
./demo/ATSAM3S_FREERTOS/libraries/drivers/twi/twid.o 

C_DEPS += \
./demo/ATSAM3S_FREERTOS/libraries/drivers/twi/twi.d \
./demo/ATSAM3S_FREERTOS/libraries/drivers/twi/twid.d 


# Each subdirectory must supply rules for building sources it contributes
demo/ATSAM3S_FREERTOS/libraries/drivers/twi/%.o: ../demo/ATSAM3S_FREERTOS/libraries/drivers/twi/%.c demo/ATSAM3S_FREERTOS/libraries/drivers/twi/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


