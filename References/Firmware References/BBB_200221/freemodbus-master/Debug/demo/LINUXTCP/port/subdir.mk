################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/LINUXTCP/port/portevent.c \
../demo/LINUXTCP/port/portother.c \
../demo/LINUXTCP/port/porttcp.c 

OBJS += \
./demo/LINUXTCP/port/portevent.o \
./demo/LINUXTCP/port/portother.o \
./demo/LINUXTCP/port/porttcp.o 

C_DEPS += \
./demo/LINUXTCP/port/portevent.d \
./demo/LINUXTCP/port/portother.d \
./demo/LINUXTCP/port/porttcp.d 


# Each subdirectory must supply rules for building sources it contributes
demo/LINUXTCP/port/%.o: ../demo/LINUXTCP/port/%.c demo/LINUXTCP/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


