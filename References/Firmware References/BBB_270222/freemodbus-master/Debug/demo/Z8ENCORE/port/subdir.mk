################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/Z8ENCORE/port/portevent.c \
../demo/Z8ENCORE/port/portserial.c \
../demo/Z8ENCORE/port/porttimer.c 

OBJS += \
./demo/Z8ENCORE/port/portevent.o \
./demo/Z8ENCORE/port/portserial.o \
./demo/Z8ENCORE/port/porttimer.o 

C_DEPS += \
./demo/Z8ENCORE/port/portevent.d \
./demo/Z8ENCORE/port/portserial.d \
./demo/Z8ENCORE/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/Z8ENCORE/port/%.o: ../demo/Z8ENCORE/port/%.c demo/Z8ENCORE/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


