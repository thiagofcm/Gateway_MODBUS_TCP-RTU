################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235/port/portevent.c \
../demo/MCF5235/port/portother.c \
../demo/MCF5235/port/portserial.c \
../demo/MCF5235/port/porttimer.c 

OBJS += \
./demo/MCF5235/port/portevent.o \
./demo/MCF5235/port/portother.o \
./demo/MCF5235/port/portserial.o \
./demo/MCF5235/port/porttimer.o 

C_DEPS += \
./demo/MCF5235/port/portevent.d \
./demo/MCF5235/port/portother.d \
./demo/MCF5235/port/portserial.d \
./demo/MCF5235/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235/port/%.o: ../demo/MCF5235/port/%.c demo/MCF5235/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


