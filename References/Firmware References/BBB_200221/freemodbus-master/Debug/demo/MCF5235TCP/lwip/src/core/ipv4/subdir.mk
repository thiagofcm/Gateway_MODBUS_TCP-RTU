################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235TCP/lwip/src/core/ipv4/icmp.c \
../demo/MCF5235TCP/lwip/src/core/ipv4/ip.c \
../demo/MCF5235TCP/lwip/src/core/ipv4/ip_addr.c \
../demo/MCF5235TCP/lwip/src/core/ipv4/ip_frag.c 

OBJS += \
./demo/MCF5235TCP/lwip/src/core/ipv4/icmp.o \
./demo/MCF5235TCP/lwip/src/core/ipv4/ip.o \
./demo/MCF5235TCP/lwip/src/core/ipv4/ip_addr.o \
./demo/MCF5235TCP/lwip/src/core/ipv4/ip_frag.o 

C_DEPS += \
./demo/MCF5235TCP/lwip/src/core/ipv4/icmp.d \
./demo/MCF5235TCP/lwip/src/core/ipv4/ip.d \
./demo/MCF5235TCP/lwip/src/core/ipv4/ip_addr.d \
./demo/MCF5235TCP/lwip/src/core/ipv4/ip_frag.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235TCP/lwip/src/core/ipv4/%.o: ../demo/MCF5235TCP/lwip/src/core/ipv4/%.c demo/MCF5235TCP/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


