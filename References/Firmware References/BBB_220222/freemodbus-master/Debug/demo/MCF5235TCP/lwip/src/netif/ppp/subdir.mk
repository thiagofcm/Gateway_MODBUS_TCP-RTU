################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235TCP/lwip/src/netif/ppp/auth.c \
../demo/MCF5235TCP/lwip/src/netif/ppp/chap.c \
../demo/MCF5235TCP/lwip/src/netif/ppp/chpms.c \
../demo/MCF5235TCP/lwip/src/netif/ppp/fsm.c \
../demo/MCF5235TCP/lwip/src/netif/ppp/ipcp.c \
../demo/MCF5235TCP/lwip/src/netif/ppp/lcp.c \
../demo/MCF5235TCP/lwip/src/netif/ppp/magic.c \
../demo/MCF5235TCP/lwip/src/netif/ppp/md5.c \
../demo/MCF5235TCP/lwip/src/netif/ppp/pap.c \
../demo/MCF5235TCP/lwip/src/netif/ppp/ppp.c \
../demo/MCF5235TCP/lwip/src/netif/ppp/randm.c \
../demo/MCF5235TCP/lwip/src/netif/ppp/vj.c 

OBJS += \
./demo/MCF5235TCP/lwip/src/netif/ppp/auth.o \
./demo/MCF5235TCP/lwip/src/netif/ppp/chap.o \
./demo/MCF5235TCP/lwip/src/netif/ppp/chpms.o \
./demo/MCF5235TCP/lwip/src/netif/ppp/fsm.o \
./demo/MCF5235TCP/lwip/src/netif/ppp/ipcp.o \
./demo/MCF5235TCP/lwip/src/netif/ppp/lcp.o \
./demo/MCF5235TCP/lwip/src/netif/ppp/magic.o \
./demo/MCF5235TCP/lwip/src/netif/ppp/md5.o \
./demo/MCF5235TCP/lwip/src/netif/ppp/pap.o \
./demo/MCF5235TCP/lwip/src/netif/ppp/ppp.o \
./demo/MCF5235TCP/lwip/src/netif/ppp/randm.o \
./demo/MCF5235TCP/lwip/src/netif/ppp/vj.o 

C_DEPS += \
./demo/MCF5235TCP/lwip/src/netif/ppp/auth.d \
./demo/MCF5235TCP/lwip/src/netif/ppp/chap.d \
./demo/MCF5235TCP/lwip/src/netif/ppp/chpms.d \
./demo/MCF5235TCP/lwip/src/netif/ppp/fsm.d \
./demo/MCF5235TCP/lwip/src/netif/ppp/ipcp.d \
./demo/MCF5235TCP/lwip/src/netif/ppp/lcp.d \
./demo/MCF5235TCP/lwip/src/netif/ppp/magic.d \
./demo/MCF5235TCP/lwip/src/netif/ppp/md5.d \
./demo/MCF5235TCP/lwip/src/netif/ppp/pap.d \
./demo/MCF5235TCP/lwip/src/netif/ppp/ppp.d \
./demo/MCF5235TCP/lwip/src/netif/ppp/randm.d \
./demo/MCF5235TCP/lwip/src/netif/ppp/vj.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235TCP/lwip/src/netif/ppp/%.o: ../demo/MCF5235TCP/lwip/src/netif/ppp/%.c demo/MCF5235TCP/lwip/src/netif/ppp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


