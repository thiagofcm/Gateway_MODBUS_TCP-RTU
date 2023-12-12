################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/AVR/port/mbcrc.c \
../demo/AVR/port/portevent.c \
../demo/AVR/port/portserial.c \
../demo/AVR/port/porttimer.c 

OBJS += \
./demo/AVR/port/mbcrc.o \
./demo/AVR/port/portevent.o \
./demo/AVR/port/portserial.o \
./demo/AVR/port/porttimer.o 

C_DEPS += \
./demo/AVR/port/mbcrc.d \
./demo/AVR/port/portevent.d \
./demo/AVR/port/portserial.d \
./demo/AVR/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/AVR/port/%.o: ../demo/AVR/port/%.c demo/AVR/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


