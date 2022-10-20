// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xaccel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAccel_CfgInitialize(XAccel *InstancePtr, XAccel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAccel_Start(XAccel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAccel_IsDone(XAccel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAccel_IsIdle(XAccel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAccel_IsReady(XAccel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAccel_Continue(XAccel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XAccel_EnableAutoRestart(XAccel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAccel_DisableAutoRestart(XAccel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XAccel_Set_gmem_softmax_weights(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_SOFTMAX_WEIGHTS_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_SOFTMAX_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_softmax_weights(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_SOFTMAX_WEIGHTS_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_SOFTMAX_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_layer_output(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_LAYER_OUTPUT_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_LAYER_OUTPUT_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_layer_output(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_LAYER_OUTPUT_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_LAYER_OUTPUT_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_label_r(XAccel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_LABEL_R_DATA, Data);
}

u32 XAccel_Get_label_r(XAccel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_LABEL_R_DATA);
    return Data;
}

void XAccel_Set_input_error(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_INPUT_ERROR_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_INPUT_ERROR_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_input_error(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_INPUT_ERROR_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_INPUT_ERROR_DATA + 4) << 32;
    return Data;
}

void XAccel_InterruptGlobalEnable(XAccel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GIE, 1);
}

void XAccel_InterruptGlobalDisable(XAccel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GIE, 0);
}

void XAccel_InterruptEnable(XAccel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_IER);
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XAccel_InterruptDisable(XAccel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_IER);
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAccel_InterruptClear(XAccel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XAccel_InterruptGetEnabled(XAccel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_IER);
}

u32 XAccel_InterruptGetStatus(XAccel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_ISR);
}

