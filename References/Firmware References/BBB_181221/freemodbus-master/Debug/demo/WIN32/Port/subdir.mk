################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/WIN32/Port/portevent.c \
../demo/WIN32/Port/portother.c \
../demo/WIN32/Port/portserial.c \
../demo/WIN32/Port/porttimer.c 

OBJS += \
./demo/WIN32/Port/portevent.o \
./demo/WIN32/Port/portother.o \
./demo/WIN32/Port/portserial.o \
./demo/WIN32/Port/porttimer.o 

C_DEPS += \
./demo/WIN32/Port/portevent.d \
./demo/WIN32/Port/portother.d \
./demo/WIN32/Port/portserial.d \
./demo/WIN32/Port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
demo/WIN32/Port/%.o: ../demo/WIN32/Port/%.c demo/WIN32/Port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


