################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/ATSAM3S/libraries/drivers/utility/bmp.c \
../demo/ATSAM3S/libraries/drivers/utility/clock.c \
../demo/ATSAM3S/libraries/drivers/utility/hamming.c \
../demo/ATSAM3S/libraries/drivers/utility/iap.c \
../demo/ATSAM3S/libraries/drivers/utility/led.c \
../demo/ATSAM3S/libraries/drivers/utility/math.c \
../demo/ATSAM3S/libraries/drivers/utility/rand.c \
../demo/ATSAM3S/libraries/drivers/utility/retarget.c \
../demo/ATSAM3S/libraries/drivers/utility/stdio.c \
../demo/ATSAM3S/libraries/drivers/utility/string.c \
../demo/ATSAM3S/libraries/drivers/utility/trace.c \
../demo/ATSAM3S/libraries/drivers/utility/util.c \
../demo/ATSAM3S/libraries/drivers/utility/video.c \
../demo/ATSAM3S/libraries/drivers/utility/wav.c 

OBJS += \
./demo/ATSAM3S/libraries/drivers/utility/bmp.o \
./demo/ATSAM3S/libraries/drivers/utility/clock.o \
./demo/ATSAM3S/libraries/drivers/utility/hamming.o \
./demo/ATSAM3S/libraries/drivers/utility/iap.o \
./demo/ATSAM3S/libraries/drivers/utility/led.o \
./demo/ATSAM3S/libraries/drivers/utility/math.o \
./demo/ATSAM3S/libraries/drivers/utility/rand.o \
./demo/ATSAM3S/libraries/drivers/utility/retarget.o \
./demo/ATSAM3S/libraries/drivers/utility/stdio.o \
./demo/ATSAM3S/libraries/drivers/utility/string.o \
./demo/ATSAM3S/libraries/drivers/utility/trace.o \
./demo/ATSAM3S/libraries/drivers/utility/util.o \
./demo/ATSAM3S/libraries/drivers/utility/video.o \
./demo/ATSAM3S/libraries/drivers/utility/wav.o 

C_DEPS += \
./demo/ATSAM3S/libraries/drivers/utility/bmp.d \
./demo/ATSAM3S/libraries/drivers/utility/clock.d \
./demo/ATSAM3S/libraries/drivers/utility/hamming.d \
./demo/ATSAM3S/libraries/drivers/utility/iap.d \
./demo/ATSAM3S/libraries/drivers/utility/led.d \
./demo/ATSAM3S/libraries/drivers/utility/math.d \
./demo/ATSAM3S/libraries/drivers/utility/rand.d \
./demo/ATSAM3S/libraries/drivers/utility/retarget.d \
./demo/ATSAM3S/libraries/drivers/utility/stdio.d \
./demo/ATSAM3S/libraries/drivers/utility/string.d \
./demo/ATSAM3S/libraries/drivers/utility/trace.d \
./demo/ATSAM3S/libraries/drivers/utility/util.d \
./demo/ATSAM3S/libraries/drivers/utility/video.d \
./demo/ATSAM3S/libraries/drivers/utility/wav.d 


# Each subdirectory must supply rules for building sources it contributes
demo/ATSAM3S/libraries/drivers/utility/%.o: ../demo/ATSAM3S/libraries/drivers/utility/%.c demo/ATSAM3S/libraries/drivers/utility/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


