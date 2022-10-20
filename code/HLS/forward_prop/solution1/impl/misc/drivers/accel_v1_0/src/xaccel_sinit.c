// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaccel.h"

extern XAccel_Config XAccel_ConfigTable[];

XAccel_Config *XAccel_LookupConfig(u16 DeviceId) {
	XAccel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XACCEL_NUM_INSTANCES; Index++) {
		if (XAccel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAccel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAccel_Initialize(XAccel *InstancePtr, u16 DeviceId) {
	XAccel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAccel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAccel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

