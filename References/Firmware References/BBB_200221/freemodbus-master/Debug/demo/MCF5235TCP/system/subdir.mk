################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235TCP/system/init.c \
../demo/MCF5235TCP/system/newlib.c \
../demo/MCF5235TCP/system/serial.c 

S_UPPER_SRCS += \
../demo/MCF5235TCP/system/crt0.S \
../demo/MCF5235TCP/system/mcf5xxx.S \
../demo/MCF5235TCP/system/vector.S 

OBJS += \
./demo/MCF5235TCP/system/crt0.o \
./demo/MCF5235TCP/system/init.o \
./demo/MCF5235TCP/system/mcf5xxx.o \
./demo/MCF5235TCP/system/newlib.o \
./demo/MCF5235TCP/system/serial.o \
./demo/MCF5235TCP/system/vector.o 

C_DEPS += \
./demo/MCF5235TCP/system/init.d \
./demo/MCF5235TCP/system/newlib.d \
./demo/MCF5235TCP/system/serial.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235TCP/system/%.o: ../demo/MCF5235TCP/system/%.S demo/MCF5235TCP/system/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	arm-linux-gnueabi-as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

demo/MCF5235TCP/system/%.o: ../demo/MCF5235TCP/system/%.c demo/MCF5235TCP/system/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


