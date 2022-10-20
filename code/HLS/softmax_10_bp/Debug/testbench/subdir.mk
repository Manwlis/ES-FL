################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
OBJS += \
./testbench/testbench.o 

CPP_DEPS += \
./testbench/testbench.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/testbench.o: /home/msi/ES-FL/code/HLS/softmax_10_bp/src/testbench.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/media/msi/SSD/Xilinx/Vitis_HLS/2022.1/include/ap_sysc -I/media/msi/SSD/Xilinx/Vitis_HLS/2022.1/lnx64/tools/systemc/include -I/media/msi/SSD/Xilinx/Vitis_HLS/2022.1/include -I/media/msi/SSD/Xilinx/Vitis_HLS/2022.1/lnx64/tools/auto_cc/include -I/media/msi/SSD/Xilinx/Vitis_HLS/2022.1/include/etc -I/home/msi/ES-FL/code/HLS -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


