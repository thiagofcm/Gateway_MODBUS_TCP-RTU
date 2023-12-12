################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235TCP/freertos/portable/MemMang/heap_1.c \
../demo/MCF5235TCP/freertos/portable/MemMang/heap_2.c \
../demo/MCF5235TCP/freertos/portable/MemMang/heap_3.c 

OBJS += \
./demo/MCF5235TCP/freertos/portable/MemMang/heap_1.o \
./demo/MCF5235TCP/freertos/portable/MemMang/heap_2.o \
./demo/MCF5235TCP/freertos/portable/MemMang/heap_3.o 

C_DEPS += \
./demo/MCF5235TCP/freertos/portable/MemMang/heap_1.d \
./demo/MCF5235TCP/freertos/portable/MemMang/heap_2.d \
./demo/MCF5235TCP/freertos/portable/MemMang/heap_3.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235TCP/freertos/portable/MemMang/%.o: ../demo/MCF5235TCP/freertos/portable/MemMang/%.c demo/MCF5235TCP/freertos/portable/MemMang/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


