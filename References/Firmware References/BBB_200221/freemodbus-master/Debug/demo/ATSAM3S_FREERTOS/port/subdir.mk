################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/ATSAM3S_FREERTOS/port/portevent.c \
../demo/ATSAM3S_FREERTOS/port/portother.c \
../demo/ATSAM3S_FREERTOS/port/portserial.c \
../demo/ATSAM3S_FREERTOS/port/porttimer.c 

OBJS += \
./demo/ATSAM3S_FREERTOS/port/portevent.o \
./demo/ATSAM3S_FREERTOS/port/portother.o \
./demo/ATSAM3S_FREERTOS/port/portserial.o \
./demo/ATSAM3S_FREERTOS/port/porttimer.o 

C_DEPS += \
./demo/ATSAM3S_FREERTOS/port/portevent.d \
./demo/ATSAM3S_FREERTOS/port/portother.d \
./demo/ATSAM3S_FREERTOS/port/portserial.d \
./demo/ATSAM3S_FREERTOS/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/ATSAM3S_FREERTOS/port/%.o: ../demo/ATSAM3S_FREERTOS/port/%.c demo/ATSAM3S_FREERTOS/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


