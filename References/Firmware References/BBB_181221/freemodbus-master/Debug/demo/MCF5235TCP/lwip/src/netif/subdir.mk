################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235TCP/lwip/src/netif/etharp.c \
../demo/MCF5235TCP/lwip/src/netif/ethernetif.c \
../demo/MCF5235TCP/lwip/src/netif/loopif.c \
../demo/MCF5235TCP/lwip/src/netif/slipif.c 

OBJS += \
./demo/MCF5235TCP/lwip/src/netif/etharp.o \
./demo/MCF5235TCP/lwip/src/netif/ethernetif.o \
./demo/MCF5235TCP/lwip/src/netif/loopif.o \
./demo/MCF5235TCP/lwip/src/netif/slipif.o 

C_DEPS += \
./demo/MCF5235TCP/lwip/src/netif/etharp.d \
./demo/MCF5235TCP/lwip/src/netif/ethernetif.d \
./demo/MCF5235TCP/lwip/src/netif/loopif.d \
./demo/MCF5235TCP/lwip/src/netif/slipif.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235TCP/lwip/src/netif/%.o: ../demo/MCF5235TCP/lwip/src/netif/%.c demo/MCF5235TCP/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


