################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XGCC/port/portevent.c \
../demo/STR71XGCC/port/portserial.c \
../demo/STR71XGCC/port/porttimer.c 

OBJS += \
./demo/STR71XGCC/port/portevent.o \
./demo/STR71XGCC/port/portserial.o \
./demo/STR71XGCC/port/porttimer.o 

C_DEPS += \
./demo/STR71XGCC/port/portevent.d \
./demo/STR71XGCC/port/portserial.d \
./demo/STR71XGCC/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XGCC/port/%.o: ../demo/STR71XGCC/port/%.c demo/STR71XGCC/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


