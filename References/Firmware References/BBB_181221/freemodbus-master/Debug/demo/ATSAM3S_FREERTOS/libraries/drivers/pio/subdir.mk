################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/ATSAM3S_FREERTOS/libraries/drivers/pio/pio.c \
../demo/ATSAM3S_FREERTOS/libraries/drivers/pio/pio_it.c \
../demo/ATSAM3S_FREERTOS/libraries/drivers/pio/pio_keypad.c 

OBJS += \
./demo/ATSAM3S_FREERTOS/libraries/drivers/pio/pio.o \
./demo/ATSAM3S_FREERTOS/libraries/drivers/pio/pio_it.o \
./demo/ATSAM3S_FREERTOS/libraries/drivers/pio/pio_keypad.o 

C_DEPS += \
./demo/ATSAM3S_FREERTOS/libraries/drivers/pio/pio.d \
./demo/ATSAM3S_FREERTOS/libraries/drivers/pio/pio_it.d \
./demo/ATSAM3S_FREERTOS/libraries/drivers/pio/pio_keypad.d 


# Each subdirectory must supply rules for building sources it contributes
demo/ATSAM3S_FREERTOS/libraries/drivers/pio/%.o: ../demo/ATSAM3S_FREERTOS/libraries/drivers/pio/%.c demo/ATSAM3S_FREERTOS/libraries/drivers/pio/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


