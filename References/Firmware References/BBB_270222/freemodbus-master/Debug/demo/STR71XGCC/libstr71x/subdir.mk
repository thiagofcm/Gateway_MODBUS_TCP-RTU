################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XGCC/libstr71x/71x_lib.c \
../demo/STR71XGCC/libstr71x/adc12.c \
../demo/STR71XGCC/libstr71x/apb.c \
../demo/STR71XGCC/libstr71x/bspi.c \
../demo/STR71XGCC/libstr71x/can.c \
../demo/STR71XGCC/libstr71x/eic.c \
../demo/STR71XGCC/libstr71x/emi.c \
../demo/STR71XGCC/libstr71x/flash.c \
../demo/STR71XGCC/libstr71x/gpio.c \
../demo/STR71XGCC/libstr71x/i2c.c \
../demo/STR71XGCC/libstr71x/pcu.c \
../demo/STR71XGCC/libstr71x/rccu.c \
../demo/STR71XGCC/libstr71x/rtc.c \
../demo/STR71XGCC/libstr71x/tim.c \
../demo/STR71XGCC/libstr71x/uart.c \
../demo/STR71XGCC/libstr71x/wdg.c \
../demo/STR71XGCC/libstr71x/xti.c 

OBJS += \
./demo/STR71XGCC/libstr71x/71x_lib.o \
./demo/STR71XGCC/libstr71x/adc12.o \
./demo/STR71XGCC/libstr71x/apb.o \
./demo/STR71XGCC/libstr71x/bspi.o \
./demo/STR71XGCC/libstr71x/can.o \
./demo/STR71XGCC/libstr71x/eic.o \
./demo/STR71XGCC/libstr71x/emi.o \
./demo/STR71XGCC/libstr71x/flash.o \
./demo/STR71XGCC/libstr71x/gpio.o \
./demo/STR71XGCC/libstr71x/i2c.o \
./demo/STR71XGCC/libstr71x/pcu.o \
./demo/STR71XGCC/libstr71x/rccu.o \
./demo/STR71XGCC/libstr71x/rtc.o \
./demo/STR71XGCC/libstr71x/tim.o \
./demo/STR71XGCC/libstr71x/uart.o \
./demo/STR71XGCC/libstr71x/wdg.o \
./demo/STR71XGCC/libstr71x/xti.o 

C_DEPS += \
./demo/STR71XGCC/libstr71x/71x_lib.d \
./demo/STR71XGCC/libstr71x/adc12.d \
./demo/STR71XGCC/libstr71x/apb.d \
./demo/STR71XGCC/libstr71x/bspi.d \
./demo/STR71XGCC/libstr71x/can.d \
./demo/STR71XGCC/libstr71x/eic.d \
./demo/STR71XGCC/libstr71x/emi.d \
./demo/STR71XGCC/libstr71x/flash.d \
./demo/STR71XGCC/libstr71x/gpio.d \
./demo/STR71XGCC/libstr71x/i2c.d \
./demo/STR71XGCC/libstr71x/pcu.d \
./demo/STR71XGCC/libstr71x/rccu.d \
./demo/STR71XGCC/libstr71x/rtc.d \
./demo/STR71XGCC/libstr71x/tim.d \
./demo/STR71XGCC/libstr71x/uart.d \
./demo/STR71XGCC/libstr71x/wdg.d \
./demo/STR71XGCC/libstr71x/xti.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XGCC/libstr71x/%.o: ../demo/STR71XGCC/libstr71x/%.c demo/STR71XGCC/libstr71x/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


