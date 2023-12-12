################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../demo/MSP430/system/dco-gcc.S \
../demo/MSP430/system/dco-rowley.S 

OBJS += \
./demo/MSP430/system/dco-gcc.o \
./demo/MSP430/system/dco-rowley.o 


# Each subdirectory must supply rules for building sources it contributes
demo/MSP430/system/%.o: ../demo/MSP430/system/%.S demo/MSP430/system/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	arm-linux-gnueabi-as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


