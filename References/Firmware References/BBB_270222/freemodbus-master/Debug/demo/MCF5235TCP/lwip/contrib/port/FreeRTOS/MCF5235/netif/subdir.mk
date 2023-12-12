################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235TCP/lwip/contrib/port/FreeRTOS/MCF5235/netif/fec.c \
../demo/MCF5235TCP/lwip/contrib/port/FreeRTOS/MCF5235/netif/nbuf.c 

OBJS += \
./demo/MCF5235TCP/lwip/contrib/port/FreeRTOS/MCF5235/netif/fec.o \
./demo/MCF5235TCP/lwip/contrib/port/FreeRTOS/MCF5235/netif/nbuf.o 

C_DEPS += \
./demo/MCF5235TCP/lwip/contrib/port/FreeRTOS/MCF5235/netif/fec.d \
./demo/MCF5235TCP/lwip/contrib/port/FreeRTOS/MCF5235/netif/nbuf.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235TCP/lwip/contrib/port/FreeRTOS/MCF5235/netif/%.o: ../demo/MCF5235TCP/lwip/contrib/port/FreeRTOS/MCF5235/netif/%.c demo/MCF5235TCP/lwip/contrib/port/FreeRTOS/MCF5235/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


