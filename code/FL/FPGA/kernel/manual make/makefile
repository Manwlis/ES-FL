#
# this file was created by a computer. trust it.
#

# compiler tools
XILINX_VITIS ?= /media/msi/SSD/Xilinx/Vitis/2022.1
XILINX_VIVADO ?= /media/msi/SSD/Xilinx/Vivado/2022.1
XILINX_HLS ?= $(XILINX_VITIS)/Vivado_HLS

VPP ?= ${XILINX_VITIS}/bin/v++
RM = rm -f
RMDIR = rm -rf

VITIS_PLATFORM = xilinx_zcu102_base_202210_1
VITIS_PLATFORM_DIR = $(XILINX_VITIS)/base_platforms/xilinx_zcu102_base_202210_1
VITIS_PLATFORM_PATH = $(XILINX_VITIS)/base_platforms/xilinx_zcu102_base_202210_1/xilinx_zcu102_base_202210_1.xpfm

TARGET = hw_emu
VPP_OPTS = --target $(TARGET)

#
# Hw kernel files
#


BUILD_SUBDIRS += build
HW_KERNEL_OBJS += build/accel.xo
SRC_KERNEL_OBJS += build/accel.xo

ALL_MESSAGE_FILES = $(subst .xo,.o,.mdb,$(SRC_KERNEL_OBJS))

#
# primary build targets
#

.PHONY: all clean
all: $(HW_KERNEL_OBJS)


clean:
	-$(RM) $(SRC_KERNEL_OBJS) $(ALL_MESSAGE_FILES) 
	-$(RMDIR) $(BUILD_SUBDIRS)
	-$(RMDIR) .Xil

.PHONY: incremental
incremental: all


nothing:

#
# Hw Kernels compile;
#

build/accel.xo: ../src/all_fwp_bp.cpp ../src/all_fwp_bp.hpp ../src/dense_layer.hpp ../src/softmax_layer.hpp ../src/maxp_layer.hpp ../src/conv_layer.hpp accel-compile.cfg
	-@mkdir -p $(@D)
	-@$(RM) $@
	$(VPP) $(VPP_OPTS) --compile -I"$(<D)" --config accel-compile.cfg -o"$@" "$<"

