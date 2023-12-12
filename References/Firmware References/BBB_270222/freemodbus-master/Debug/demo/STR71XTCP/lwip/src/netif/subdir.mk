################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XTCP/lwip/src/netif/etharp.c \
../demo/STR71XTCP/lwip/src/netif/ethernetif.c \
../demo/STR71XTCP/lwip/src/netif/loopif.c \
../demo/STR71XTCP/lwip/src/netif/slipif.c 

OBJS += \
./demo/STR71XTCP/lwip/src/netif/etharp.o \
./demo/STR71XTCP/lwip/src/netif/ethernetif.o \
./demo/STR71XTCP/lwip/src/netif/loopif.o \
./demo/STR71XTCP/lwip/src/netif/slipif.o 

C_DEPS += \
./demo/STR71XTCP/lwip/src/netif/etharp.d \
./demo/STR71XTCP/lwip/src/netif/ethernetif.d \
./demo/STR71XTCP/lwip/src/netif/loopif.d \
./demo/STR71XTCP/lwip/src/netif/slipif.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XTCP/lwip/src/netif/%.o: ../demo/STR71XTCP/lwip/src/netif/%.c demo/STR71XTCP/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


