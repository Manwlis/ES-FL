; ModuleID = '/home/msi/ES-FL/code/HLS/forward_prop/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>" = type { %"struct.hls::axis<float, 0, 0, 0>" }
%"struct.hls::axis<float, 0, 0, 0>" = type { float, %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"class.hls::stream<bool, 0>" }
%"class.hls::stream<bool, 0>" = type { i1 }

; Function Attrs: noinline
define void @apatb_accel_ir(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(12) %input_stream, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="288" %gmem_conv2d_32_weights, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="32" %gmem_conv2d_32_biases, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="18432" %gmem_conv2d_64_weights, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %gmem_conv2d_64_biases, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="401408" %gmem_dense_weights, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="128" %gmem_dense_biases, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1280" %gmem_softmax_weights, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="10" %gmem_softmax_biases, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="25088" %gmem_conv2d_32_feature_map, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="6272" %gmem_maxp2d_32_feature_map, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="12544" %gmem_conv2d_64_feature_map, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="3136" %gmem_maxp2d_64_feature_map, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="128" %gmem_dense_feature_map, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="10" %gmem_softmax_feature_map) local_unnamed_addr #0 {
entry:
  %input_stream_copy.data = alloca i32
  %input_stream_copy.keep = alloca i4
  %input_stream_copy.strb = alloca i4
  %input_stream_copy.last = alloca i1
  %gmem_conv2d_32_weights_copy = alloca [288 x float], align 512
  %gmem_conv2d_32_biases_copy = alloca [32 x float], align 512
  %malloccall = tail call i8* @malloc(i64 73728)
  %gmem_conv2d_64_weights_copy = bitcast i8* %malloccall to [18432 x float]*
  %gmem_conv2d_64_biases_copy = alloca [64 x float], align 512
  %malloccall1 = tail call i8* @malloc(i64 1605632)
  %gmem_dense_weights_copy = bitcast i8* %malloccall1 to [401408 x float]*
  %gmem_dense_biases_copy = alloca [128 x float], align 512
  %malloccall2 = tail call i8* @malloc(i64 5120)
  %gmem_softmax_weights_copy = bitcast i8* %malloccall2 to [1280 x float]*
  %gmem_softmax_biases_copy = alloca [10 x float], align 512
  %malloccall3 = tail call i8* @malloc(i64 100352)
  %gmem_conv2d_32_feature_map_copy = bitcast i8* %malloccall3 to [25088 x float]*
  %malloccall4 = tail call i8* @malloc(i64 25088)
  %gmem_maxp2d_32_feature_map_copy = bitcast i8* %malloccall4 to [6272 x float]*
  %malloccall5 = tail call i8* @malloc(i64 50176)
  %gmem_conv2d_64_feature_map_copy = bitcast i8* %malloccall5 to [12544 x float]*
  %malloccall6 = tail call i8* @malloc(i64 12544)
  %gmem_maxp2d_64_feature_map_copy = bitcast i8* %malloccall6 to [3136 x float]*
  %gmem_dense_feature_map_copy = alloca [128 x float], align 512
  %gmem_softmax_feature_map_copy = alloca [10 x float], align 512
  %0 = bitcast float* %gmem_conv2d_32_weights to [288 x float]*
  %1 = bitcast float* %gmem_conv2d_32_biases to [32 x float]*
  %2 = bitcast float* %gmem_conv2d_64_weights to [18432 x float]*
  %3 = bitcast float* %gmem_conv2d_64_biases to [64 x float]*
  %4 = bitcast float* %gmem_dense_weights to [401408 x float]*
  %5 = bitcast float* %gmem_dense_biases to [128 x float]*
  %6 = bitcast float* %gmem_softmax_weights to [1280 x float]*
  %7 = bitcast float* %gmem_softmax_biases to [10 x float]*
  %8 = bitcast float* %gmem_conv2d_32_feature_map to [25088 x float]*
  %9 = bitcast float* %gmem_maxp2d_32_feature_map to [6272 x float]*
  %10 = bitcast float* %gmem_conv2d_64_feature_map to [12544 x float]*
  %11 = bitcast float* %gmem_maxp2d_64_feature_map to [3136 x float]*
  %12 = bitcast float* %gmem_dense_feature_map to [128 x float]*
  %13 = bitcast float* %gmem_softmax_feature_map to [10 x float]*
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* nonnull %input_stream, i32* %input_stream_copy.data, i4* %input_stream_copy.keep, i4* %input_stream_copy.strb, i1* %input_stream_copy.last, [288 x float]* nonnull %0, [288 x float]* nonnull align 512 %gmem_conv2d_32_weights_copy, [32 x float]* nonnull %1, [32 x float]* nonnull align 512 %gmem_conv2d_32_biases_copy, [18432 x float]* nonnull %2, [18432 x float]* %gmem_conv2d_64_weights_copy, [64 x float]* nonnull %3, [64 x float]* nonnull align 512 %gmem_conv2d_64_biases_copy, [401408 x float]* nonnull %4, [401408 x float]* %gmem_dense_weights_copy, [128 x float]* nonnull %5, [128 x float]* nonnull align 512 %gmem_dense_biases_copy, [1280 x float]* nonnull %6, [1280 x float]* %gmem_softmax_weights_copy, [10 x float]* nonnull %7, [10 x float]* nonnull align 512 %gmem_softmax_biases_copy, [25088 x float]* nonnull %8, [25088 x float]* %gmem_conv2d_32_feature_map_copy, [6272 x float]* nonnull %9, [6272 x float]* %gmem_maxp2d_32_feature_map_copy, [12544 x float]* nonnull %10, [12544 x float]* %gmem_conv2d_64_feature_map_copy, [3136 x float]* nonnull %11, [3136 x float]* %gmem_maxp2d_64_feature_map_copy, [128 x float]* nonnull %12, [128 x float]* nonnull align 512 %gmem_dense_feature_map_copy, [10 x float]* nonnull %13, [10 x float]* nonnull align 512 %gmem_softmax_feature_map_copy)
  %14 = getelementptr inbounds [288 x float], [288 x float]* %gmem_conv2d_32_weights_copy, i32 0, i32 0
  %15 = getelementptr inbounds [32 x float], [32 x float]* %gmem_conv2d_32_biases_copy, i32 0, i32 0
  %16 = getelementptr inbounds [18432 x float], [18432 x float]* %gmem_conv2d_64_weights_copy, i32 0, i32 0
  %17 = getelementptr inbounds [64 x float], [64 x float]* %gmem_conv2d_64_biases_copy, i32 0, i32 0
  %18 = getelementptr inbounds [401408 x float], [401408 x float]* %gmem_dense_weights_copy, i32 0, i32 0
  %19 = getelementptr inbounds [128 x float], [128 x float]* %gmem_dense_biases_copy, i32 0, i32 0
  %20 = getelementptr inbounds [1280 x float], [1280 x float]* %gmem_softmax_weights_copy, i32 0, i32 0
  %21 = getelementptr inbounds [10 x float], [10 x float]* %gmem_softmax_biases_copy, i32 0, i32 0
  %22 = getelementptr inbounds [25088 x float], [25088 x float]* %gmem_conv2d_32_feature_map_copy, i32 0, i32 0
  %23 = getelementptr inbounds [6272 x float], [6272 x float]* %gmem_maxp2d_32_feature_map_copy, i32 0, i32 0
  %24 = getelementptr inbounds [12544 x float], [12544 x float]* %gmem_conv2d_64_feature_map_copy, i32 0, i32 0
  %25 = getelementptr inbounds [3136 x float], [3136 x float]* %gmem_maxp2d_64_feature_map_copy, i32 0, i32 0
  %26 = getelementptr inbounds [128 x float], [128 x float]* %gmem_dense_feature_map_copy, i32 0, i32 0
  %27 = getelementptr inbounds [10 x float], [10 x float]* %gmem_softmax_feature_map_copy, i32 0, i32 0
  call void @apatb_accel_hw(i32* %input_stream_copy.data, i4* %input_stream_copy.keep, i4* %input_stream_copy.strb, i1* %input_stream_copy.last, float* %14, float* %15, float* %16, float* %17, float* %18, float* %19, float* %20, float* %21, float* %22, float* %23, float* %24, float* %25, float* %26, float* %27)
  call void @copy_back(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %input_stream, i32* %input_stream_copy.data, i4* %input_stream_copy.keep, i4* %input_stream_copy.strb, i1* %input_stream_copy.last, [288 x float]* %0, [288 x float]* %gmem_conv2d_32_weights_copy, [32 x float]* %1, [32 x float]* %gmem_conv2d_32_biases_copy, [18432 x float]* %2, [18432 x float]* %gmem_conv2d_64_weights_copy, [64 x float]* %3, [64 x float]* %gmem_conv2d_64_biases_copy, [401408 x float]* %4, [401408 x float]* %gmem_dense_weights_copy, [128 x float]* %5, [128 x float]* %gmem_dense_biases_copy, [1280 x float]* %6, [1280 x float]* %gmem_softmax_weights_copy, [10 x float]* %7, [10 x float]* %gmem_softmax_biases_copy, [25088 x float]* %8, [25088 x float]* %gmem_conv2d_32_feature_map_copy, [6272 x float]* %9, [6272 x float]* %gmem_maxp2d_32_feature_map_copy, [12544 x float]* %10, [12544 x float]* %gmem_conv2d_64_feature_map_copy, [3136 x float]* %11, [3136 x float]* %gmem_maxp2d_64_feature_map_copy, [128 x float]* %12, [128 x float]* %gmem_dense_feature_map_copy, [10 x float]* %13, [10 x float]* %gmem_softmax_feature_map_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  tail call void @free(i8* %malloccall4)
  tail call void @free(i8* %malloccall5)
  tail call void @free(i8* %malloccall6)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, [288 x float]* noalias readonly, [288 x float]* noalias align 512, [32 x float]* noalias readonly, [32 x float]* noalias align 512, [18432 x float]* noalias readonly, [18432 x float]* noalias, [64 x float]* noalias readonly, [64 x float]* noalias align 512, [401408 x float]* noalias readonly, [401408 x float]* noalias, [128 x float]* noalias readonly, [128 x float]* noalias align 512, [1280 x float]* noalias readonly, [1280 x float]* noalias, [10 x float]* noalias readonly, [10 x float]* noalias align 512, [25088 x float]* noalias readonly, [25088 x float]* noalias, [6272 x float]* noalias readonly, [6272 x float]* noalias, [12544 x float]* noalias readonly, [12544 x float]* noalias, [3136 x float]* noalias readonly, [3136 x float]* noalias, [128 x float]* noalias readonly, [128 x float]* noalias align 512, [10 x float]* noalias readonly, [10 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"(i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0)
  call fastcc void @onebyonecpy_hls.p0a288f32([288 x float]* align 512 %2, [288 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* align 512 %4, [32 x float]* %3)
  call fastcc void @onebyonecpy_hls.p0a18432f32([18432 x float]* %6, [18432 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* align 512 %8, [64 x float]* %7)
  call fastcc void @onebyonecpy_hls.p0a401408f32([401408 x float]* %10, [401408 x float]* %9)
  call fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* align 512 %12, [128 x float]* %11)
  call fastcc void @onebyonecpy_hls.p0a1280f32([1280 x float]* %14, [1280 x float]* %13)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* align 512 %16, [10 x float]* %15)
  call fastcc void @onebyonecpy_hls.p0a25088f32([25088 x float]* %18, [25088 x float]* %17)
  call fastcc void @onebyonecpy_hls.p0a6272f32([6272 x float]* %20, [6272 x float]* %19)
  call fastcc void @onebyonecpy_hls.p0a12544f32([12544 x float]* %22, [12544 x float]* %21)
  call fastcc void @onebyonecpy_hls.p0a3136f32([3136 x float]* %24, [3136 x float]* %23)
  call fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* align 512 %26, [128 x float]* %25)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* align 512 %28, [10 x float]* %27)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"(i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"(i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"(i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast float* %8 to i32*
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<4>"* %12 to i4*
  %14 = bitcast i4* %13 to i8*
  %15 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<4>"* %16 to i4*
  %18 = bitcast i4* %17 to i8*
  %19 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a288f32([288 x float]* noalias align 512, [288 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [288 x float]* %0, null
  %3 = icmp eq [288 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [288 x float], [288 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [288 x float], [288 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 288
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* noalias align 512, [32 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [32 x float]* %0, null
  %3 = icmp eq [32 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x float], [32 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [32 x float], [32 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a18432f32([18432 x float]* noalias, [18432 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [18432 x float]* %0, null
  %3 = icmp eq [18432 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [18432 x float], [18432 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [18432 x float], [18432 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 18432
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* noalias align 512, [64 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [64 x float]* %0, null
  %3 = icmp eq [64 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [64 x float], [64 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [64 x float], [64 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a401408f32([401408 x float]* noalias, [401408 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [401408 x float]* %0, null
  %3 = icmp eq [401408 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [401408 x float], [401408 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [401408 x float], [401408 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 401408
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* noalias align 512, [128 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [128 x float]* %0, null
  %3 = icmp eq [128 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [128 x float], [128 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [128 x float], [128 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1280f32([1280 x float]* noalias, [1280 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [1280 x float]* %0, null
  %3 = icmp eq [1280 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1280 x float], [1280 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1280 x float], [1280 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1280
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* noalias align 512, [10 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [10 x float]* %0, null
  %3 = icmp eq [10 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [10 x float], [10 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [10 x float], [10 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a25088f32([25088 x float]* noalias, [25088 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [25088 x float]* %0, null
  %3 = icmp eq [25088 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [25088 x float], [25088 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [25088 x float], [25088 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 25088
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a6272f32([6272 x float]* noalias, [6272 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [6272 x float]* %0, null
  %3 = icmp eq [6272 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [6272 x float], [6272 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [6272 x float], [6272 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6272
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a12544f32([12544 x float]* noalias, [12544 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [12544 x float]* %0, null
  %3 = icmp eq [12544 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [12544 x float], [12544 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [12544 x float], [12544 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 12544
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a3136f32([3136 x float]* noalias, [3136 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [3136 x float]* %0, null
  %3 = icmp eq [3136 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3136 x float], [3136 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [3136 x float], [3136 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3136
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, [288 x float]* noalias, [288 x float]* noalias readonly align 512, [32 x float]* noalias, [32 x float]* noalias readonly align 512, [18432 x float]* noalias, [18432 x float]* noalias readonly, [64 x float]* noalias, [64 x float]* noalias readonly align 512, [401408 x float]* noalias, [401408 x float]* noalias readonly, [128 x float]* noalias, [128 x float]* noalias readonly align 512, [1280 x float]* noalias, [1280 x float]* noalias readonly, [10 x float]* noalias, [10 x float]* noalias readonly align 512, [25088 x float]* noalias, [25088 x float]* noalias readonly, [6272 x float]* noalias, [6272 x float]* noalias readonly, [12544 x float]* noalias, [12544 x float]* noalias readonly, [3136 x float]* noalias, [3136 x float]* noalias readonly, [128 x float]* noalias, [128 x float]* noalias readonly align 512, [10 x float]* noalias, [10 x float]* noalias readonly align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.235"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @onebyonecpy_hls.p0a288f32([288 x float]* %1, [288 x float]* align 512 %2)
  call fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* %3, [32 x float]* align 512 %4)
  call fastcc void @onebyonecpy_hls.p0a18432f32([18432 x float]* %5, [18432 x float]* %6)
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* %7, [64 x float]* align 512 %8)
  call fastcc void @onebyonecpy_hls.p0a401408f32([401408 x float]* %9, [401408 x float]* %10)
  call fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* %11, [128 x float]* align 512 %12)
  call fastcc void @onebyonecpy_hls.p0a1280f32([1280 x float]* %13, [1280 x float]* %14)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* %15, [10 x float]* align 512 %16)
  call fastcc void @onebyonecpy_hls.p0a25088f32([25088 x float]* %17, [25088 x float]* %18)
  call fastcc void @onebyonecpy_hls.p0a6272f32([6272 x float]* %19, [6272 x float]* %20)
  call fastcc void @onebyonecpy_hls.p0a12544f32([12544 x float]* %21, [12544 x float]* %22)
  call fastcc void @onebyonecpy_hls.p0a3136f32([3136 x float]* %23, [3136 x float]* %24)
  call fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* %25, [128 x float]* align 512 %26)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* %27, [10 x float]* align 512 %28)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.235"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #2 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.238"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* nonnull align 512 %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.238"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  %2 = alloca i1
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i32* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_4(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i32* %5 to i8*
  %9 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %8, i8* %9)
  %10 = load volatile i32, i32* %5
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast float* %11 to i32*
  store i32 %10, i32* %12
  %13 = bitcast i4* %4 to i8*
  %14 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %13, i8* %14)
  %15 = bitcast i4* %4 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i4
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %19 = bitcast %"struct.ap_uint<4>"* %18 to i4*
  store i4 %17, i4* %19
  %20 = bitcast i4* %3 to i8*
  %21 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %20, i8* %21)
  %22 = bitcast i4* %3 to i8*
  %23 = load i8, i8* %22
  %24 = trunc i8 %23 to i4
  %25 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %26 = bitcast %"struct.ap_uint<4>"* %25 to i4*
  store i4 %24, i4* %26
  %27 = bitcast i1* %2 to i8*
  %28 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %27, i8* %28)
  %29 = bitcast i1* %2 to i8*
  %30 = load i8, i8* %29
  %31 = trunc i8 %30 to i1
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %33 = bitcast %"struct.ap_uint<1>"* %32 to i1*
  store i1 %31, i1* %33
  %34 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1 to i8*
  %35 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %34, i8* %35)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_accel_hw(i32*, i4*, i4*, i1*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, [288 x float]* noalias, [288 x float]* noalias readonly align 512, [32 x float]* noalias, [32 x float]* noalias readonly align 512, [18432 x float]* noalias, [18432 x float]* noalias readonly, [64 x float]* noalias, [64 x float]* noalias readonly align 512, [401408 x float]* noalias, [401408 x float]* noalias readonly, [128 x float]* noalias, [128 x float]* noalias readonly align 512, [1280 x float]* noalias, [1280 x float]* noalias readonly, [10 x float]* noalias, [10 x float]* noalias readonly align 512, [25088 x float]* noalias, [25088 x float]* noalias readonly, [6272 x float]* noalias, [6272 x float]* noalias readonly, [12544 x float]* noalias, [12544 x float]* noalias readonly, [3136 x float]* noalias, [3136 x float]* noalias readonly, [128 x float]* noalias, [128 x float]* noalias readonly align 512, [10 x float]* noalias, [10 x float]* noalias readonly align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.235"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @onebyonecpy_hls.p0a25088f32([25088 x float]* %17, [25088 x float]* %18)
  call fastcc void @onebyonecpy_hls.p0a6272f32([6272 x float]* %19, [6272 x float]* %20)
  call fastcc void @onebyonecpy_hls.p0a12544f32([12544 x float]* %21, [12544 x float]* %22)
  call fastcc void @onebyonecpy_hls.p0a3136f32([3136 x float]* %23, [3136 x float]* %24)
  call fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* %25, [128 x float]* align 512 %26)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* %27, [10 x float]* align 512 %28)
  ret void
}

define void @accel_hw_stub_wrapper(i32*, i4*, i4*, i1*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*) #6 {
entry:
  %18 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  %19 = bitcast float* %4 to [288 x float]*
  %20 = bitcast float* %5 to [32 x float]*
  %21 = bitcast float* %6 to [18432 x float]*
  %22 = bitcast float* %7 to [64 x float]*
  %23 = bitcast float* %8 to [401408 x float]*
  %24 = bitcast float* %9 to [128 x float]*
  %25 = bitcast float* %10 to [1280 x float]*
  %26 = bitcast float* %11 to [10 x float]*
  %27 = bitcast float* %12 to [25088 x float]*
  %28 = bitcast float* %13 to [6272 x float]*
  %29 = bitcast float* %14 to [12544 x float]*
  %30 = bitcast float* %15 to [3136 x float]*
  %31 = bitcast float* %16 to [128 x float]*
  %32 = bitcast float* %17 to [10 x float]*
  call void @copy_out(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %18, i32* %0, i4* %1, i4* %2, i1* %3, [288 x float]* null, [288 x float]* %19, [32 x float]* null, [32 x float]* %20, [18432 x float]* null, [18432 x float]* %21, [64 x float]* null, [64 x float]* %22, [401408 x float]* null, [401408 x float]* %23, [128 x float]* null, [128 x float]* %24, [1280 x float]* null, [1280 x float]* %25, [10 x float]* null, [10 x float]* %26, [25088 x float]* null, [25088 x float]* %27, [6272 x float]* null, [6272 x float]* %28, [12544 x float]* null, [12544 x float]* %29, [3136 x float]* null, [3136 x float]* %30, [128 x float]* null, [128 x float]* %31, [10 x float]* null, [10 x float]* %32)
  %33 = bitcast [288 x float]* %19 to float*
  %34 = bitcast [32 x float]* %20 to float*
  %35 = bitcast [18432 x float]* %21 to float*
  %36 = bitcast [64 x float]* %22 to float*
  %37 = bitcast [401408 x float]* %23 to float*
  %38 = bitcast [128 x float]* %24 to float*
  %39 = bitcast [1280 x float]* %25 to float*
  %40 = bitcast [10 x float]* %26 to float*
  %41 = bitcast [25088 x float]* %27 to float*
  %42 = bitcast [6272 x float]* %28 to float*
  %43 = bitcast [12544 x float]* %29 to float*
  %44 = bitcast [3136 x float]* %30 to float*
  %45 = bitcast [128 x float]* %31 to float*
  %46 = bitcast [10 x float]* %32 to float*
  call void @accel_hw_stub(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %18, float* %33, float* %34, float* %35, float* %36, float* %37, float* %38, float* %39, float* %40, float* %41, float* %42, float* %43, float* %44, float* %45, float* %46)
  call void @copy_in(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %18, i32* %0, i4* %1, i4* %2, i1* %3, [288 x float]* null, [288 x float]* %19, [32 x float]* null, [32 x float]* %20, [18432 x float]* null, [18432 x float]* %21, [64 x float]* null, [64 x float]* %22, [401408 x float]* null, [401408 x float]* %23, [128 x float]* null, [128 x float]* %24, [1280 x float]* null, [1280 x float]* %25, [10 x float]* null, [10 x float]* %26, [25088 x float]* null, [25088 x float]* %27, [6272 x float]* null, [6272 x float]* %28, [12544 x float]* null, [12544 x float]* %29, [3136 x float]* null, [3136 x float]* %30, [128 x float]* null, [128 x float]* %31, [10 x float]* null, [10 x float]* %32)
  ret void
}

declare void @accel_hw_stub(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
