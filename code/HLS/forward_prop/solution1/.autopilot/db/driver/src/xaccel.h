// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XACCEL_H
#define XACCEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xaccel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XAccel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAccel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAccel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAccel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAccel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAccel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XAccel_Initialize(XAccel *InstancePtr, u16 DeviceId);
XAccel_Config* XAccel_LookupConfig(u16 DeviceId);
int XAccel_CfgInitialize(XAccel *InstancePtr, XAccel_Config *ConfigPtr);
#else
int XAccel_Initialize(XAccel *InstancePtr, const char* InstanceName);
int XAccel_Release(XAccel *InstancePtr);
#endif

void XAccel_Start(XAccel *InstancePtr);
u32 XAccel_IsDone(XAccel *InstancePtr);
u32 XAccel_IsIdle(XAccel *InstancePtr);
u32 XAccel_IsReady(XAccel *InstancePtr);
void XAccel_Continue(XAccel *InstancePtr);
void XAccel_EnableAutoRestart(XAccel *InstancePtr);
void XAccel_DisableAutoRestart(XAccel *InstancePtr);

void XAccel_Set_gmem_conv2d_32_weights(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_conv2d_32_weights(XAccel *InstancePtr);
void XAccel_Set_gmem_conv2d_32_biases(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_conv2d_32_biases(XAccel *InstancePtr);
void XAccel_Set_gmem_conv2d_64_weights(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_conv2d_64_weights(XAccel *InstancePtr);
void XAccel_Set_gmem_conv2d_64_biases(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_conv2d_64_biases(XAccel *InstancePtr);
void XAccel_Set_gmem_dense_weights(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_dense_weights(XAccel *InstancePtr);
void XAccel_Set_gmem_dense_biases(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_dense_biases(XAccel *InstancePtr);
void XAccel_Set_gmem_softmax_weights(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_softmax_weights(XAccel *InstancePtr);
void XAccel_Set_gmem_softmax_biases(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_softmax_biases(XAccel *InstancePtr);
void XAccel_Set_gmem_conv2d_32_feature_map(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_conv2d_32_feature_map(XAccel *InstancePtr);
void XAccel_Set_gmem_maxp2d_32_feature_map(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_maxp2d_32_feature_map(XAccel *InstancePtr);
void XAccel_Set_gmem_conv2d_64_feature_map(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_conv2d_64_feature_map(XAccel *InstancePtr);
void XAccel_Set_gmem_maxp2d_64_feature_map(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_maxp2d_64_feature_map(XAccel *InstancePtr);
void XAccel_Set_gmem_dense_feature_map(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_dense_feature_map(XAccel *InstancePtr);
void XAccel_Set_gmem_softmax_feature_map(XAccel *InstancePtr, u64 Data);
u64 XAccel_Get_gmem_softmax_feature_map(XAccel *InstancePtr);

void XAccel_InterruptGlobalEnable(XAccel *InstancePtr);
void XAccel_InterruptGlobalDisable(XAccel *InstancePtr);
void XAccel_InterruptEnable(XAccel *InstancePtr, u32 Mask);
void XAccel_InterruptDisable(XAccel *InstancePtr, u32 Mask);
void XAccel_InterruptClear(XAccel *InstancePtr, u32 Mask);
u32 XAccel_InterruptGetEnabled(XAccel *InstancePtr);
u32 XAccel_InterruptGetStatus(XAccel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
