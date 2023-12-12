################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XTCP/lwip/src/netif/ppp/auth.c \
../demo/STR71XTCP/lwip/src/netif/ppp/chap.c \
../demo/STR71XTCP/lwip/src/netif/ppp/chpms.c \
../demo/STR71XTCP/lwip/src/netif/ppp/fsm.c \
../demo/STR71XTCP/lwip/src/netif/ppp/ipcp.c \
../demo/STR71XTCP/lwip/src/netif/ppp/lcp.c \
../demo/STR71XTCP/lwip/src/netif/ppp/magic.c \
../demo/STR71XTCP/lwip/src/netif/ppp/md5.c \
../demo/STR71XTCP/lwip/src/netif/ppp/pap.c \
../demo/STR71XTCP/lwip/src/netif/ppp/ppp.c \
../demo/STR71XTCP/lwip/src/netif/ppp/randm.c \
../demo/STR71XTCP/lwip/src/netif/ppp/vj.c 

OBJS += \
./demo/STR71XTCP/lwip/src/netif/ppp/auth.o \
./demo/STR71XTCP/lwip/src/netif/ppp/chap.o \
./demo/STR71XTCP/lwip/src/netif/ppp/chpms.o \
./demo/STR71XTCP/lwip/src/netif/ppp/fsm.o \
./demo/STR71XTCP/lwip/src/netif/ppp/ipcp.o \
./demo/STR71XTCP/lwip/src/netif/ppp/lcp.o \
./demo/STR71XTCP/lwip/src/netif/ppp/magic.o \
./demo/STR71XTCP/lwip/src/netif/ppp/md5.o \
./demo/STR71XTCP/lwip/src/netif/ppp/pap.o \
./demo/STR71XTCP/lwip/src/netif/ppp/ppp.o \
./demo/STR71XTCP/lwip/src/netif/ppp/randm.o \
./demo/STR71XTCP/lwip/src/netif/ppp/vj.o 

C_DEPS += \
./demo/STR71XTCP/lwip/src/netif/ppp/auth.d \
./demo/STR71XTCP/lwip/src/netif/ppp/chap.d \
./demo/STR71XTCP/lwip/src/netif/ppp/chpms.d \
./demo/STR71XTCP/lwip/src/netif/ppp/fsm.d \
./demo/STR71XTCP/lwip/src/netif/ppp/ipcp.d \
./demo/STR71XTCP/lwip/src/netif/ppp/lcp.d \
./demo/STR71XTCP/lwip/src/netif/ppp/magic.d \
./demo/STR71XTCP/lwip/src/netif/ppp/md5.d \
./demo/STR71XTCP/lwip/src/netif/ppp/pap.d \
./demo/STR71XTCP/lwip/src/netif/ppp/ppp.d \
./demo/STR71XTCP/lwip/src/netif/ppp/randm.d \
./demo/STR71XTCP/lwip/src/netif/ppp/vj.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XTCP/lwip/src/netif/ppp/%.o: ../demo/STR71XTCP/lwip/src/netif/ppp/%.c demo/STR71XTCP/lwip/src/netif/ppp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


