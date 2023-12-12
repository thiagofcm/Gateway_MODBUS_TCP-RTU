################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/MCF5235/demo.c \
../demo/MCF5235/init.c 

S_UPPER_SRCS += \
../demo/MCF5235/crt0.S \
../demo/MCF5235/vector.S 

OBJS += \
./demo/MCF5235/crt0.o \
./demo/MCF5235/demo.o \
./demo/MCF5235/init.o \
./demo/MCF5235/vector.o 

C_DEPS += \
./demo/MCF5235/demo.d \
./demo/MCF5235/init.d 


# Each subdirectory must supply rules for building sources it contributes
demo/MCF5235/%.o: ../demo/MCF5235/%.S demo/MCF5235/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	arm-linux-gnueabi-as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

demo/MCF5235/%.o: ../demo/MCF5235/%.c demo/MCF5235/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


