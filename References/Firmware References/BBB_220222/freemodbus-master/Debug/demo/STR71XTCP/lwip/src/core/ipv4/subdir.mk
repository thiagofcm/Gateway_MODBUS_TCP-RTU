################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XTCP/lwip/src/core/ipv4/icmp.c \
../demo/STR71XTCP/lwip/src/core/ipv4/ip.c \
../demo/STR71XTCP/lwip/src/core/ipv4/ip_addr.c \
../demo/STR71XTCP/lwip/src/core/ipv4/ip_frag.c 

OBJS += \
./demo/STR71XTCP/lwip/src/core/ipv4/icmp.o \
./demo/STR71XTCP/lwip/src/core/ipv4/ip.o \
./demo/STR71XTCP/lwip/src/core/ipv4/ip_addr.o \
./demo/STR71XTCP/lwip/src/core/ipv4/ip_frag.o 

C_DEPS += \
./demo/STR71XTCP/lwip/src/core/ipv4/icmp.d \
./demo/STR71XTCP/lwip/src/core/ipv4/ip.d \
./demo/STR71XTCP/lwip/src/core/ipv4/ip_addr.d \
./demo/STR71XTCP/lwip/src/core/ipv4/ip_frag.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XTCP/lwip/src/core/ipv4/%.o: ../demo/STR71XTCP/lwip/src/core/ipv4/%.c demo/STR71XTCP/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


