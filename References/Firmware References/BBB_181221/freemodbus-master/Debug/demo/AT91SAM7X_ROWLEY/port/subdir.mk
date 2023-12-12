################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/AT91SAM7X_ROWLEY/port/portevent.c \
../demo/AT91SAM7X_ROWLEY/port/portother.c \
../demo/AT91SAM7X_ROWLEY/port/portserial.c \
../demo/AT91SAM7X_ROWLEY/port/porttimer.c 

OBJS += \
./demo/AT91SAM7X_ROWLEY/port/portevent.o \
./demo/AT91SAM7X_ROWLEY/port/portother.o \
./demo/AT91SAM7X_ROWLEY/port/portserial.o \
./demo/AT91SAM7X_ROWLEY/port/porttimer.o 

C_DEPS += \
./demo/AT91SAM7X_ROWLEY/port/portevent.d \
./demo/AT91SAM7X_ROWLEY/port/portother.d \
./demo/AT91SAM7X_ROWLEY/port/portserial.d \
./demo/AT91SAM7X_ROWLEY/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/AT91SAM7X_ROWLEY/port/%.o: ../demo/AT91SAM7X_ROWLEY/port/%.c demo/AT91SAM7X_ROWLEY/port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


