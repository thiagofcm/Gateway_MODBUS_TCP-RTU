################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235TCP/lwip/src/core/dhcp.c \
../demo/MCF5235TCP/lwip/src/core/inet.c \
../demo/MCF5235TCP/lwip/src/core/inet6.c \
../demo/MCF5235TCP/lwip/src/core/mem.c \
../demo/MCF5235TCP/lwip/src/core/memp.c \
../demo/MCF5235TCP/lwip/src/core/netif.c \
../demo/MCF5235TCP/lwip/src/core/pbuf.c \
../demo/MCF5235TCP/lwip/src/core/raw.c \
../demo/MCF5235TCP/lwip/src/core/stats.c \
../demo/MCF5235TCP/lwip/src/core/sys.c \
../demo/MCF5235TCP/lwip/src/core/tcp.c \
../demo/MCF5235TCP/lwip/src/core/tcp_in.c \
../demo/MCF5235TCP/lwip/src/core/tcp_out.c \
../demo/MCF5235TCP/lwip/src/core/udp.c 

OBJS += \
./demo/MCF5235TCP/lwip/src/core/dhcp.o \
./demo/MCF5235TCP/lwip/src/core/inet.o \
./demo/MCF5235TCP/lwip/src/core/inet6.o \
./demo/MCF5235TCP/lwip/src/core/mem.o \
./demo/MCF5235TCP/lwip/src/core/memp.o \
./demo/MCF5235TCP/lwip/src/core/netif.o \
./demo/MCF5235TCP/lwip/src/core/pbuf.o \
./demo/MCF5235TCP/lwip/src/core/raw.o \
./demo/MCF5235TCP/lwip/src/core/stats.o \
./demo/MCF5235TCP/lwip/src/core/sys.o \
./demo/MCF5235TCP/lwip/src/core/tcp.o \
./demo/MCF5235TCP/lwip/src/core/tcp_in.o \
./demo/MCF5235TCP/lwip/src/core/tcp_out.o \
./demo/MCF5235TCP/lwip/src/core/udp.o 

C_DEPS += \
./demo/MCF5235TCP/lwip/src/core/dhcp.d \
./demo/MCF5235TCP/lwip/src/core/inet.d \
./demo/MCF5235TCP/lwip/src/core/inet6.d \
./demo/MCF5235TCP/lwip/src/core/mem.d \
./demo/MCF5235TCP/lwip/src/core/memp.d \
./demo/MCF5235TCP/lwip/src/core/netif.d \
./demo/MCF5235TCP/lwip/src/core/pbuf.d \
./demo/MCF5235TCP/lwip/src/core/raw.d \
./demo/MCF5235TCP/lwip/src/core/stats.d \
./demo/MCF5235TCP/lwip/src/core/sys.d \
./demo/MCF5235TCP/lwip/src/core/tcp.d \
./demo/MCF5235TCP/lwip/src/core/tcp_in.d \
./demo/MCF5235TCP/lwip/src/core/tcp_out.d \
./demo/MCF5235TCP/lwip/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235TCP/lwip/src/core/%.o: ../demo/MCF5235TCP/lwip/src/core/%.c demo/MCF5235TCP/lwip/src/core/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


