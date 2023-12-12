################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LINUXTCP/demo.c 

O_SRCS += \
../LINUXTCP/demo.o 

OBJS += \
./LINUXTCP/demo.o 

C_DEPS += \
./LINUXTCP/demo.d 


# Each subdirectory must supply rules for building sources it contributes
LINUXTCP/%.o: ../LINUXTCP/%.c LINUXTCP/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -I"/home/feelt/eclipse-workspace/freemodbus-master/LINUXTCP/port" -I"/home/feelt/eclipse-workspace/freemodbus-master/modbus/include" -I"/home/feelt/eclipse-workspace/freemodbus-master/modbus/ascii" -I"/home/feelt/eclipse-workspace/freemodbus-master/modbus/rtu" -I"/home/feelt/eclipse-workspace/freemodbus-master/modbus/tcp" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


