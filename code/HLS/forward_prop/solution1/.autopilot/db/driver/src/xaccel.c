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

void XAccel_Set_gmem_conv2d_32_weights(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_32_WEIGHTS_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_32_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_conv2d_32_weights(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_32_WEIGHTS_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_32_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_gmem_conv2d_32_biases(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_32_BIASES_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_32_BIASES_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_conv2d_32_biases(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_32_BIASES_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_32_BIASES_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_gmem_conv2d_64_weights(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_64_WEIGHTS_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_64_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_conv2d_64_weights(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_64_WEIGHTS_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_64_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_gmem_conv2d_64_biases(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_64_BIASES_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_64_BIASES_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_conv2d_64_biases(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_64_BIASES_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_64_BIASES_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_gmem_dense_weights(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_DENSE_WEIGHTS_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_DENSE_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_dense_weights(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_DENSE_WEIGHTS_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_DENSE_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_gmem_dense_biases(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_DENSE_BIASES_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_DENSE_BIASES_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_dense_biases(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_DENSE_BIASES_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_DENSE_BIASES_DATA + 4) << 32;
    return Data;
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

void XAccel_Set_gmem_softmax_biases(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_SOFTMAX_BIASES_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_SOFTMAX_BIASES_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_softmax_biases(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_SOFTMAX_BIASES_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_SOFTMAX_BIASES_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_gmem_conv2d_32_feature_map(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_32_FEATURE_MAP_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_32_FEATURE_MAP_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_conv2d_32_feature_map(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_32_FEATURE_MAP_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_32_FEATURE_MAP_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_gmem_maxp2d_32_feature_map(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_MAXP2D_32_FEATURE_MAP_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_MAXP2D_32_FEATURE_MAP_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_maxp2d_32_feature_map(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_MAXP2D_32_FEATURE_MAP_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_MAXP2D_32_FEATURE_MAP_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_gmem_conv2d_64_feature_map(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_64_FEATURE_MAP_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_64_FEATURE_MAP_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_conv2d_64_feature_map(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_64_FEATURE_MAP_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_CONV2D_64_FEATURE_MAP_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_gmem_maxp2d_64_feature_map(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_MAXP2D_64_FEATURE_MAP_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_MAXP2D_64_FEATURE_MAP_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_maxp2d_64_feature_map(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_MAXP2D_64_FEATURE_MAP_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_MAXP2D_64_FEATURE_MAP_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_gmem_dense_feature_map(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_DENSE_FEATURE_MAP_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_DENSE_FEATURE_MAP_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_dense_feature_map(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_DENSE_FEATURE_MAP_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_DENSE_FEATURE_MAP_DATA + 4) << 32;
    return Data;
}

void XAccel_Set_gmem_softmax_feature_map(XAccel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_SOFTMAX_FEATURE_MAP_DATA, (u32)(Data));
    XAccel_WriteReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_SOFTMAX_FEATURE_MAP_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_Get_gmem_softmax_feature_map(XAccel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_SOFTMAX_FEATURE_MAP_DATA);
    Data += (u64)XAccel_ReadReg(InstancePtr->Control_BaseAddress, XACCEL_CONTROL_ADDR_GMEM_SOFTMAX_FEATURE_MAP_DATA + 4) << 32;
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

