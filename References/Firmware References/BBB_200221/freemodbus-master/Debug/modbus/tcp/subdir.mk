################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../modbus/tcp/mbtcp.c 

O_SRCS += \
../modbus/tcp/mbtcp.o 

OBJS += \
./modbus/tcp/mbtcp.o 

C_DEPS += \
./modbus/tcp/mbtcp.d 


# Each subdirectory must supply rules for building sources it contributes
modbus/tcp/%.o: ../modbus/tcp/%.c modbus/tcp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -I"/home/feelt/eclipse-workspace/freemodbus-master/LINUXTCP/port" -I"/home/feelt/eclipse-workspace/freemodbus-master/modbus/include" -I"/home/feelt/eclipse-workspace/freemodbus-master/modbus/ascii" -I"/home/feelt/eclipse-workspace/freemodbus-master/modbus/rtu" -I"/home/feelt/eclipse-workspace/freemodbus-master/modbus/tcp" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


