################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/AT91SAM7X_ROWLEY/demo.c 

OBJS += \
./demo/AT91SAM7X_ROWLEY/demo.o 

C_DEPS += \
./demo/AT91SAM7X_ROWLEY/demo.d 


# Each subdirectory must supply rules for building sources it contributes
demo/AT91SAM7X_ROWLEY/%.o: ../demo/AT91SAM7X_ROWLEY/%.c demo/AT91SAM7X_ROWLEY/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


