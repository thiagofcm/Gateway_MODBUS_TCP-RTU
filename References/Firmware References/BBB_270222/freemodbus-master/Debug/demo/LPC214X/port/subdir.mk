################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/LPC214X/port/port.c \
../demo/LPC214X/port/portevent.c \
../demo/LPC214X/port/portserial.c \
../demo/LPC214X/port/porttimer.c 

OBJS += \
./demo/LPC214X/port/port.o \
./demo/LPC214X/port/portevent.o \
./demo/LPC214X/port/portserial.o \
./demo/LPC214X/port/porttimer.o 

C_DEPS += \
./demo/LPC214X/port/port.d \
./demo/LPC214X/port/portevent.d \
./demo/LPC214X/port/portserial.d \
./demo/LPC214X/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/LPC214X/port/%.o: ../demo/LPC214X/port/%.c demo/LPC214X/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


