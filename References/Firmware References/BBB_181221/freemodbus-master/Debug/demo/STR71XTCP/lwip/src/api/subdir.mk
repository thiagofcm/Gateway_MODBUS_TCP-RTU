################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/STR71XTCP/lwip/src/api/api_lib.c \
../demo/STR71XTCP/lwip/src/api/api_msg.c \
../demo/STR71XTCP/lwip/src/api/err.c \
../demo/STR71XTCP/lwip/src/api/sockets.c \
../demo/STR71XTCP/lwip/src/api/tcpip.c 

OBJS += \
./demo/STR71XTCP/lwip/src/api/api_lib.o \
./demo/STR71XTCP/lwip/src/api/api_msg.o \
./demo/STR71XTCP/lwip/src/api/err.o \
./demo/STR71XTCP/lwip/src/api/sockets.o \
./demo/STR71XTCP/lwip/src/api/tcpip.o 

C_DEPS += \
./demo/STR71XTCP/lwip/src/api/api_lib.d \
./demo/STR71XTCP/lwip/src/api/api_msg.d \
./demo/STR71XTCP/lwip/src/api/err.d \
./demo/STR71XTCP/lwip/src/api/sockets.d \
./demo/STR71XTCP/lwip/src/api/tcpip.d 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XTCP/lwip/src/api/%.o: ../demo/STR71XTCP/lwip/src/api/%.c demo/STR71XTCP/lwip/src/api/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


