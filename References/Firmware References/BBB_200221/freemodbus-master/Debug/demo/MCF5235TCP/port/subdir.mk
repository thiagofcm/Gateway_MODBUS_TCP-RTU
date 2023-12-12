################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235TCP/port/portevent.c \
../demo/MCF5235TCP/port/portother.c \
../demo/MCF5235TCP/port/porttcp.c 

OBJS += \
./demo/MCF5235TCP/port/portevent.o \
./demo/MCF5235TCP/port/portother.o \
./demo/MCF5235TCP/port/porttcp.o 

C_DEPS += \
./demo/MCF5235TCP/port/portevent.d \
./demo/MCF5235TCP/port/portother.d \
./demo/MCF5235TCP/port/porttcp.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235TCP/port/%.o: ../demo/MCF5235TCP/port/%.c demo/MCF5235TCP/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


