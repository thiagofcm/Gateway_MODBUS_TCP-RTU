################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/aes_hardware.c \
../demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/aes_reference.c \
../demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/libtomcrypt.c \
../demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/tdes_hardware.c 

OBJS += \
./demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/aes_hardware.o \
./demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/aes_reference.o \
./demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/libtomcrypt.o \
./demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/tdes_hardware.o 

C_DEPS += \
./demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/aes_hardware.d \
./demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/aes_reference.d \
./demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/libtomcrypt.d \
./demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/tdes_hardware.d 


# Each subdirectory must supply rules for building sources it contributes
demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/%.o: ../demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/%.c demo/ATSAM3S_FREERTOS/libraries/drivers/utility/encryption/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


