################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/ATSAM3S/libraries/drivers/spi-flash/at45d.c \
../demo/ATSAM3S/libraries/drivers/spi-flash/spi_at45.c \
../demo/ATSAM3S/libraries/drivers/spi-flash/spi_pdc.c 

OBJS += \
./demo/ATSAM3S/libraries/drivers/spi-flash/at45d.o \
./demo/ATSAM3S/libraries/drivers/spi-flash/spi_at45.o \
./demo/ATSAM3S/libraries/drivers/spi-flash/spi_pdc.o 

C_DEPS += \
./demo/ATSAM3S/libraries/drivers/spi-flash/at45d.d \
./demo/ATSAM3S/libraries/drivers/spi-flash/spi_at45.d \
./demo/ATSAM3S/libraries/drivers/spi-flash/spi_pdc.d 


# Each subdirectory must supply rules for building sources it contributes
demo/ATSAM3S/libraries/drivers/spi-flash/%.o: ../demo/ATSAM3S/libraries/drivers/spi-flash/%.c demo/ATSAM3S/libraries/drivers/spi-flash/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


