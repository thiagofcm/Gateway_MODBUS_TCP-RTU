################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235CW/port/portevent.c \
../demo/MCF5235CW/port/portother.c \
../demo/MCF5235CW/port/portserial.c \
../demo/MCF5235CW/port/porttimer.c 

OBJS += \
./demo/MCF5235CW/port/portevent.o \
./demo/MCF5235CW/port/portother.o \
./demo/MCF5235CW/port/portserial.o \
./demo/MCF5235CW/port/porttimer.o 

C_DEPS += \
./demo/MCF5235CW/port/portevent.d \
./demo/MCF5235CW/port/portother.d \
./demo/MCF5235CW/port/portserial.d \
./demo/MCF5235CW/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235CW/port/%.o: ../demo/MCF5235CW/port/%.c demo/MCF5235CW/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


