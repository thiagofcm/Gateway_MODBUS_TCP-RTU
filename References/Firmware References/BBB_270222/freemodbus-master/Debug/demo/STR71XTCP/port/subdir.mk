################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XTCP/port/portevent.c \
../demo/STR71XTCP/port/portother.c \
../demo/STR71XTCP/port/porttcp.c 

OBJS += \
./demo/STR71XTCP/port/portevent.o \
./demo/STR71XTCP/port/portother.o \
./demo/STR71XTCP/port/porttcp.o 

C_DEPS += \
./demo/STR71XTCP/port/portevent.d \
./demo/STR71XTCP/port/portother.d \
./demo/STR71XTCP/port/porttcp.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XTCP/port/%.o: ../demo/STR71XTCP/port/%.c demo/STR71XTCP/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


