################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/ATSAM3S/libraries/drivers/lcd/draw.c \
../demo/ATSAM3S/libraries/drivers/lcd/font.c \
../demo/ATSAM3S/libraries/drivers/lcd/lcdd.c 

OBJS += \
./demo/ATSAM3S/libraries/drivers/lcd/draw.o \
./demo/ATSAM3S/libraries/drivers/lcd/font.o \
./demo/ATSAM3S/libraries/drivers/lcd/lcdd.o 

C_DEPS += \
./demo/ATSAM3S/libraries/drivers/lcd/draw.d \
./demo/ATSAM3S/libraries/drivers/lcd/font.d \
./demo/ATSAM3S/libraries/drivers/lcd/lcdd.d 


# Each subdirectory must supply rules for building sources it contributes
demo/ATSAM3S/libraries/drivers/lcd/%.o: ../demo/ATSAM3S/libraries/drivers/lcd/%.c demo/ATSAM3S/libraries/drivers/lcd/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


