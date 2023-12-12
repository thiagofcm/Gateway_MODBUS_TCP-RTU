################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/HCS08/port/portevent.c \
../demo/HCS08/port/portserial.c \
../demo/HCS08/port/porttimer.c 

OBJS += \
./demo/HCS08/port/portevent.o \
./demo/HCS08/port/portserial.o \
./demo/HCS08/port/porttimer.o 

C_DEPS += \
./demo/HCS08/port/portevent.d \
./demo/HCS08/port/portserial.d \
./demo/HCS08/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/HCS08/port/%.o: ../demo/HCS08/port/%.c demo/HCS08/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


