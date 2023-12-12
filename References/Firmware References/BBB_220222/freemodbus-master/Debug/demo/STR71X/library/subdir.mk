################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71X/library/71x_lib.c \
../demo/STR71X/library/adc12.c \
../demo/STR71X/library/apb.c \
../demo/STR71X/library/bspi.c \
../demo/STR71X/library/can.c \
../demo/STR71X/library/eic.c \
../demo/STR71X/library/emi.c \
../demo/STR71X/library/flash.c \
../demo/STR71X/library/gpio.c \
../demo/STR71X/library/i2c.c \
../demo/STR71X/library/pcu.c \
../demo/STR71X/library/rccu.c \
../demo/STR71X/library/rtc.c \
../demo/STR71X/library/tim.c \
../demo/STR71X/library/uart.c \
../demo/STR71X/library/wdg.c \
../demo/STR71X/library/xti.c 

OBJS += \
./demo/STR71X/library/71x_lib.o \
./demo/STR71X/library/adc12.o \
./demo/STR71X/library/apb.o \
./demo/STR71X/library/bspi.o \
./demo/STR71X/library/can.o \
./demo/STR71X/library/eic.o \
./demo/STR71X/library/emi.o \
./demo/STR71X/library/flash.o \
./demo/STR71X/library/gpio.o \
./demo/STR71X/library/i2c.o \
./demo/STR71X/library/pcu.o \
./demo/STR71X/library/rccu.o \
./demo/STR71X/library/rtc.o \
./demo/STR71X/library/tim.o \
./demo/STR71X/library/uart.o \
./demo/STR71X/library/wdg.o \
./demo/STR71X/library/xti.o 

C_DEPS += \
./demo/STR71X/library/71x_lib.d \
./demo/STR71X/library/adc12.d \
./demo/STR71X/library/apb.d \
./demo/STR71X/library/bspi.d \
./demo/STR71X/library/can.d \
./demo/STR71X/library/eic.d \
./demo/STR71X/library/emi.d \
./demo/STR71X/library/flash.d \
./demo/STR71X/library/gpio.d \
./demo/STR71X/library/i2c.d \
./demo/STR71X/library/pcu.d \
./demo/STR71X/library/rccu.d \
./demo/STR71X/library/rtc.d \
./demo/STR71X/library/tim.d \
./demo/STR71X/library/uart.d \
./demo/STR71X/library/wdg.d \
./demo/STR71X/library/xti.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71X/library/%.o: ../demo/STR71X/library/%.c demo/STR71X/library/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


