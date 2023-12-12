################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71X/port/portevent.c \
../demo/STR71X/port/portserial.c \
../demo/STR71X/port/porttimer.c 

OBJS += \
./demo/STR71X/port/portevent.o \
./demo/STR71X/port/portserial.o \
./demo/STR71X/port/porttimer.o 

C_DEPS += \
./demo/STR71X/port/portevent.d \
./demo/STR71X/port/portserial.d \
./demo/STR71X/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71X/port/%.o: ../demo/STR71X/port/%.c demo/STR71X/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


