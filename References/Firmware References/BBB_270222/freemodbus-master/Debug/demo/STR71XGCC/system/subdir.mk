################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../demo/STR71XGCC/system/startup.S \
../demo/STR71XGCC/system/vector.S 

OBJS += \
./demo/STR71XGCC/system/startup.o \
./demo/STR71XGCC/system/vector.o 


# Each subdirectory must supply rules for building sources it contributes
demo/STR71XGCC/system/%.o: ../demo/STR71XGCC/system/%.S demo/STR71XGCC/system/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	arm-linux-gnueabi-as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


