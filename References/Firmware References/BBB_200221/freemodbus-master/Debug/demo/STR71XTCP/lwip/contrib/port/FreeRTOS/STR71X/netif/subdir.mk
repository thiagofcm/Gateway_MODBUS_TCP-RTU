################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XTCP/lwip/contrib/port/FreeRTOS/STR71X/netif/serial.c 

OBJS += \
./demo/STR71XTCP/lwip/contrib/port/FreeRTOS/STR71X/netif/serial.o 

C_DEPS += \
./demo/STR71XTCP/lwip/contrib/port/FreeRTOS/STR71X/netif/serial.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XTCP/lwip/contrib/port/FreeRTOS/STR71X/netif/%.o: ../demo/STR71XTCP/lwip/contrib/port/FreeRTOS/STR71X/netif/%.c demo/STR71XTCP/lwip/contrib/port/FreeRTOS/STR71X/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


