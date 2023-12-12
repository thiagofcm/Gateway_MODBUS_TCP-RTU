################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XTCP/library/71x_lib.c \
../demo/STR71XTCP/library/adc12.c \
../demo/STR71XTCP/library/apb.c \
../demo/STR71XTCP/library/bspi.c \
../demo/STR71XTCP/library/can.c \
../demo/STR71XTCP/library/eic.c \
../demo/STR71XTCP/library/emi.c \
../demo/STR71XTCP/library/flash.c \
../demo/STR71XTCP/library/gpio.c \
../demo/STR71XTCP/library/i2c.c \
../demo/STR71XTCP/library/pcu.c \
../demo/STR71XTCP/library/rccu.c \
../demo/STR71XTCP/library/rtc.c \
../demo/STR71XTCP/library/tim.c \
../demo/STR71XTCP/library/uart.c \
../demo/STR71XTCP/library/wdg.c \
../demo/STR71XTCP/library/xti.c 

OBJS += \
./demo/STR71XTCP/library/71x_lib.o \
./demo/STR71XTCP/library/adc12.o \
./demo/STR71XTCP/library/apb.o \
./demo/STR71XTCP/library/bspi.o \
./demo/STR71XTCP/library/can.o \
./demo/STR71XTCP/library/eic.o \
./demo/STR71XTCP/library/emi.o \
./demo/STR71XTCP/library/flash.o \
./demo/STR71XTCP/library/gpio.o \
./demo/STR71XTCP/library/i2c.o \
./demo/STR71XTCP/library/pcu.o \
./demo/STR71XTCP/library/rccu.o \
./demo/STR71XTCP/library/rtc.o \
./demo/STR71XTCP/library/tim.o \
./demo/STR71XTCP/library/uart.o \
./demo/STR71XTCP/library/wdg.o \
./demo/STR71XTCP/library/xti.o 

C_DEPS += \
./demo/STR71XTCP/library/71x_lib.d \
./demo/STR71XTCP/library/adc12.d \
./demo/STR71XTCP/library/apb.d \
./demo/STR71XTCP/library/bspi.d \
./demo/STR71XTCP/library/can.d \
./demo/STR71XTCP/library/eic.d \
./demo/STR71XTCP/library/emi.d \
./demo/STR71XTCP/library/flash.d \
./demo/STR71XTCP/library/gpio.d \
./demo/STR71XTCP/library/i2c.d \
./demo/STR71XTCP/library/pcu.d \
./demo/STR71XTCP/library/rccu.d \
./demo/STR71XTCP/library/rtc.d \
./demo/STR71XTCP/library/tim.d \
./demo/STR71XTCP/library/uart.d \
./demo/STR71XTCP/library/wdg.d \
./demo/STR71XTCP/library/xti.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XTCP/library/%.o: ../demo/STR71XTCP/library/%.c demo/STR71XTCP/library/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


