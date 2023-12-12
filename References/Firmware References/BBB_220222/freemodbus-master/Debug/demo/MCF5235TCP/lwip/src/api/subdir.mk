################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235TCP/lwip/src/api/api_lib.c \
../demo/MCF5235TCP/lwip/src/api/api_msg.c \
../demo/MCF5235TCP/lwip/src/api/err.c \
../demo/MCF5235TCP/lwip/src/api/sockets.c \
../demo/MCF5235TCP/lwip/src/api/tcpip.c 

OBJS += \
./demo/MCF5235TCP/lwip/src/api/api_lib.o \
./demo/MCF5235TCP/lwip/src/api/api_msg.o \
./demo/MCF5235TCP/lwip/src/api/err.o \
./demo/MCF5235TCP/lwip/src/api/sockets.o \
./demo/MCF5235TCP/lwip/src/api/tcpip.o 

C_DEPS += \
./demo/MCF5235TCP/lwip/src/api/api_lib.d \
./demo/MCF5235TCP/lwip/src/api/api_msg.d \
./demo/MCF5235TCP/lwip/src/api/err.d \
./demo/MCF5235TCP/lwip/src/api/sockets.d \
./demo/MCF5235TCP/lwip/src/api/tcpip.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235TCP/lwip/src/api/%.o: ../demo/MCF5235TCP/lwip/src/api/%.c demo/MCF5235TCP/lwip/src/api/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


