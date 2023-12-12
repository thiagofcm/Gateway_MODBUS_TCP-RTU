################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235TCP/lwip/src/core/ipv6/icmp6.c \
../demo/MCF5235TCP/lwip/src/core/ipv6/ip6.c \
../demo/MCF5235TCP/lwip/src/core/ipv6/ip6_addr.c 

OBJS += \
./demo/MCF5235TCP/lwip/src/core/ipv6/icmp6.o \
./demo/MCF5235TCP/lwip/src/core/ipv6/ip6.o \
./demo/MCF5235TCP/lwip/src/core/ipv6/ip6_addr.o 

C_DEPS += \
./demo/MCF5235TCP/lwip/src/core/ipv6/icmp6.d \
./demo/MCF5235TCP/lwip/src/core/ipv6/ip6.d \
./demo/MCF5235TCP/lwip/src/core/ipv6/ip6_addr.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235TCP/lwip/src/core/ipv6/%.o: ../demo/MCF5235TCP/lwip/src/core/ipv6/%.c demo/MCF5235TCP/lwip/src/core/ipv6/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


