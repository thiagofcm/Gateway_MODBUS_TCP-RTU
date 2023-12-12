################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/AVR/demo.c \
../demo/AVR/excoils.c 

OBJS += \
./demo/AVR/demo.o \
./demo/AVR/excoils.o 

C_DEPS += \
./demo/AVR/demo.d \
./demo/AVR/excoils.d 


# Each subdirectory must supply rules for building sources it contributes
demo/AVR/%.o: ../demo/AVR/%.c demo/AVR/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


