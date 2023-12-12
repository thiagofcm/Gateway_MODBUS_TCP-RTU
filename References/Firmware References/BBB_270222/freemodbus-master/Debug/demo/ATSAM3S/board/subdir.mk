################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/ATSAM3S/board/board_cstartup_gnu.c \
../demo/ATSAM3S/board/board_cstartup_iar.c \
../demo/ATSAM3S/board/board_cstartup_keil.c \
../demo/ATSAM3S/board/board_lowlevel.c \
../demo/ATSAM3S/board/board_memories.c \
../demo/ATSAM3S/board/exceptions.c 

OBJS += \
./demo/ATSAM3S/board/board_cstartup_gnu.o \
./demo/ATSAM3S/board/board_cstartup_iar.o \
./demo/ATSAM3S/board/board_cstartup_keil.o \
./demo/ATSAM3S/board/board_lowlevel.o \
./demo/ATSAM3S/board/board_memories.o \
./demo/ATSAM3S/board/exceptions.o 

C_DEPS += \
./demo/ATSAM3S/board/board_cstartup_gnu.d \
./demo/ATSAM3S/board/board_cstartup_iar.d \
./demo/ATSAM3S/board/board_cstartup_keil.d \
./demo/ATSAM3S/board/board_lowlevel.d \
./demo/ATSAM3S/board/board_memories.d \
./demo/ATSAM3S/board/exceptions.d 


# Each subdirectory must supply rules for building sources it contributes
demo/ATSAM3S/board/%.o: ../demo/ATSAM3S/board/%.c demo/ATSAM3S/board/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabi-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


