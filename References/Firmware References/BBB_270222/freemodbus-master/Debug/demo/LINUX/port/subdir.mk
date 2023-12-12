################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/LINUX/port/portevent.c \
../demo/LINUX/port/portother.c \
../demo/LINUX/port/portserial.c \
../demo/LINUX/port/porttimer.c 

OBJS += \
./demo/LINUX/port/portevent.o \
./demo/LINUX/port/portother.o \
./demo/LINUX/port/portserial.o \
./demo/LINUX/port/porttimer.o 

C_DEPS += \
./demo/LINUX/port/portevent.d \
./demo/LINUX/port/portother.d \
./demo/LINUX/port/portserial.d \
./demo/LINUX/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/LINUX/port/%.o: ../demo/LINUX/port/%.c demo/LINUX/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


