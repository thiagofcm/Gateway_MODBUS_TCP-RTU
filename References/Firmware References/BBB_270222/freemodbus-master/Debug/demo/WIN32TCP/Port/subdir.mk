################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/WIN32TCP/Port/portevent.c \
../demo/WIN32TCP/Port/portother.c \
../demo/WIN32TCP/Port/porttcp.c 

OBJS += \
./demo/WIN32TCP/Port/portevent.o \
./demo/WIN32TCP/Port/portother.o \
./demo/WIN32TCP/Port/porttcp.o 

C_DEPS += \
./demo/WIN32TCP/Port/portevent.d \
./demo/WIN32TCP/Port/portother.d \
./demo/WIN32TCP/Port/porttcp.d 


# Each subdirectory must supply rules for building sources it contributes
demo/WIN32TCP/Port/%.o: ../demo/WIN32TCP/Port/%.c demo/WIN32TCP/Port/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


