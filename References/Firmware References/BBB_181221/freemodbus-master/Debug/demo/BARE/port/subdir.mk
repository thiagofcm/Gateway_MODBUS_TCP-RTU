################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/BARE/port/portevent.c \
../demo/BARE/port/portserial.c \
../demo/BARE/port/porttimer.c 

OBJS += \
./demo/BARE/port/portevent.o \
./demo/BARE/port/portserial.o \
./demo/BARE/port/porttimer.o 

C_DEPS += \
./demo/BARE/port/portevent.d \
./demo/BARE/port/portserial.d \
./demo/BARE/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/BARE/port/%.o: ../demo/BARE/port/%.c demo/BARE/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


