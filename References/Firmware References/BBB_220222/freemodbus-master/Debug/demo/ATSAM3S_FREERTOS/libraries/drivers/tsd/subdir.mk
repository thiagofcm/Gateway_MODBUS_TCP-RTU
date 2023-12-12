################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/ATSAM3S_FREERTOS/libraries/drivers/tsd/tsd_ads7843.c \
../demo/ATSAM3S_FREERTOS/libraries/drivers/tsd/tsd_com.c 

OBJS += \
./demo/ATSAM3S_FREERTOS/libraries/drivers/tsd/tsd_ads7843.o \
./demo/ATSAM3S_FREERTOS/libraries/drivers/tsd/tsd_com.o 

C_DEPS += \
./demo/ATSAM3S_FREERTOS/libraries/drivers/tsd/tsd_ads7843.d \
./demo/ATSAM3S_FREERTOS/libraries/drivers/tsd/tsd_com.d 


# Each subdirectory must supply rules for building sources it contributes
demo/ATSAM3S_FREERTOS/libraries/drivers/tsd/%.o: ../demo/ATSAM3S_FREERTOS/libraries/drivers/tsd/%.c demo/ATSAM3S_FREERTOS/libraries/drivers/tsd/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


