################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MSP430/port/portevent.c \
../demo/MSP430/port/portserial.c \
../demo/MSP430/port/porttimer.c 

OBJS += \
./demo/MSP430/port/portevent.o \
./demo/MSP430/port/portserial.o \
./demo/MSP430/port/porttimer.o 

C_DEPS += \
./demo/MSP430/port/portevent.d \
./demo/MSP430/port/portserial.d \
./demo/MSP430/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MSP430/port/%.o: ../demo/MSP430/port/%.c demo/MSP430/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


