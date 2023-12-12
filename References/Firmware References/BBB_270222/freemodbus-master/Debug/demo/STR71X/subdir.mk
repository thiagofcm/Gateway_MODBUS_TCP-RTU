################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71X/excoils.c \
../demo/STR71X/exdisc.c \
../demo/STR71X/exholding.c \
../demo/STR71X/simple.c \
../demo/STR71X/simple2.c 

OBJS += \
./demo/STR71X/excoils.o \
./demo/STR71X/exdisc.o \
./demo/STR71X/exholding.o \
./demo/STR71X/simple.o \
./demo/STR71X/simple2.o 

C_DEPS += \
./demo/STR71X/excoils.d \
./demo/STR71X/exdisc.d \
./demo/STR71X/exholding.d \
./demo/STR71X/simple.d \
./demo/STR71X/simple2.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71X/%.o: ../demo/STR71X/%.c demo/STR71X/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


