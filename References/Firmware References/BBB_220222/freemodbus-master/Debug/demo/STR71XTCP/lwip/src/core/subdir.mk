################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XTCP/lwip/src/core/dhcp.c \
../demo/STR71XTCP/lwip/src/core/inet.c \
../demo/STR71XTCP/lwip/src/core/inet6.c \
../demo/STR71XTCP/lwip/src/core/mem.c \
../demo/STR71XTCP/lwip/src/core/memp.c \
../demo/STR71XTCP/lwip/src/core/netif.c \
../demo/STR71XTCP/lwip/src/core/pbuf.c \
../demo/STR71XTCP/lwip/src/core/raw.c \
../demo/STR71XTCP/lwip/src/core/stats.c \
../demo/STR71XTCP/lwip/src/core/sys.c \
../demo/STR71XTCP/lwip/src/core/tcp.c \
../demo/STR71XTCP/lwip/src/core/tcp_in.c \
../demo/STR71XTCP/lwip/src/core/tcp_out.c \
../demo/STR71XTCP/lwip/src/core/udp.c 

OBJS += \
./demo/STR71XTCP/lwip/src/core/dhcp.o \
./demo/STR71XTCP/lwip/src/core/inet.o \
./demo/STR71XTCP/lwip/src/core/inet6.o \
./demo/STR71XTCP/lwip/src/core/mem.o \
./demo/STR71XTCP/lwip/src/core/memp.o \
./demo/STR71XTCP/lwip/src/core/netif.o \
./demo/STR71XTCP/lwip/src/core/pbuf.o \
./demo/STR71XTCP/lwip/src/core/raw.o \
./demo/STR71XTCP/lwip/src/core/stats.o \
./demo/STR71XTCP/lwip/src/core/sys.o \
./demo/STR71XTCP/lwip/src/core/tcp.o \
./demo/STR71XTCP/lwip/src/core/tcp_in.o \
./demo/STR71XTCP/lwip/src/core/tcp_out.o \
./demo/STR71XTCP/lwip/src/core/udp.o 

C_DEPS += \
./demo/STR71XTCP/lwip/src/core/dhcp.d \
./demo/STR71XTCP/lwip/src/core/inet.d \
./demo/STR71XTCP/lwip/src/core/inet6.d \
./demo/STR71XTCP/lwip/src/core/mem.d \
./demo/STR71XTCP/lwip/src/core/memp.d \
./demo/STR71XTCP/lwip/src/core/netif.d \
./demo/STR71XTCP/lwip/src/core/pbuf.d \
./demo/STR71XTCP/lwip/src/core/raw.d \
./demo/STR71XTCP/lwip/src/core/stats.d \
./demo/STR71XTCP/lwip/src/core/sys.d \
./demo/STR71XTCP/lwip/src/core/tcp.d \
./demo/STR71XTCP/lwip/src/core/tcp_in.d \
./demo/STR71XTCP/lwip/src/core/tcp_out.d \
./demo/STR71XTCP/lwip/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XTCP/lwip/src/core/%.o: ../demo/STR71XTCP/lwip/src/core/%.c demo/STR71XTCP/lwip/src/core/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


