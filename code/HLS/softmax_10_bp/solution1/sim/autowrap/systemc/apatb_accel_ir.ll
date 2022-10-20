; ModuleID = '/home/msi/ES-FL/code/HLS/softmax_10_bp/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_accel_ir([10 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="128" %gmem_softmax_weights, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="10" %layer_output, i32 %label, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="128" %input_error) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 5120)
  %gmem_softmax_weights_copy = bitcast i8* %malloccall to [128 x [10 x float]]*
  %layer_output_copy = alloca [10 x float], align 512
  %input_error_copy = alloca [128 x float], align 512
  %0 = bitcast [10 x float]* %gmem_softmax_weights to [128 x [10 x float]]*
  %1 = bitcast float* %layer_output to [10 x float]*
  %2 = bitcast float* %input_error to [128 x float]*
  call fastcc void @copy_in([128 x [10 x float]]* nonnull %0, [128 x [10 x float]]* %gmem_softmax_weights_copy, [10 x float]* nonnull %1, [10 x float]* nonnull align 512 %layer_output_copy, [128 x float]* nonnull %2, [128 x float]* nonnull align 512 %input_error_copy)
  %3 = getelementptr inbounds [128 x [10 x float]], [128 x [10 x float]]* %gmem_softmax_weights_copy, i32 0, i32 0
  %4 = getelementptr inbounds [10 x float], [10 x float]* %layer_output_copy, i32 0, i32 0
  %5 = getelementptr inbounds [128 x float], [128 x float]* %input_error_copy, i32 0, i32 0
  call void @apatb_accel_hw([10 x float]* %3, float* %4, i32 %label, float* %5)
  call void @copy_back([128 x [10 x float]]* %0, [128 x [10 x float]]* %gmem_softmax_weights_copy, [10 x float]* %1, [10 x float]* %layer_output_copy, [128 x float]* %2, [128 x float]* %input_error_copy)
  tail call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([128 x [10 x float]]* noalias readonly, [128 x [10 x float]]* noalias, [10 x float]* noalias readonly, [10 x float]* noalias align 512, [128 x float]* noalias readonly, [128 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128a10f32([128 x [10 x float]]* %1, [128 x [10 x float]]* %0)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* align 512 %3, [10 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* align 512 %5, [128 x float]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a128a10f32([128 x [10 x float]]* noalias, [128 x [10 x float]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x [10 x float]]* %0, null
  %3 = icmp eq [128 x [10 x float]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [128 x [10 x float]], [128 x [10 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [128 x [10 x float]], [128 x [10 x float]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load float, float* %src.addr68, align 4
  store float %5, float* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 10
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* noalias align 512, [10 x float]* noalias readonly) unnamed_addr #2 {
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
define internal fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* noalias align 512, [128 x float]* noalias readonly) unnamed_addr #2 {
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
define internal fastcc void @copy_out([128 x [10 x float]]* noalias, [128 x [10 x float]]* noalias readonly, [10 x float]* noalias, [10 x float]* noalias readonly align 512, [128 x float]* noalias, [128 x float]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128a10f32([128 x [10 x float]]* %0, [128 x [10 x float]]* %1)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* %2, [10 x float]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* %4, [128 x float]* align 512 %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_accel_hw([10 x float]*, float*, i32, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([128 x [10 x float]]* noalias, [128 x [10 x float]]* noalias readonly, [10 x float]* noalias, [10 x float]* noalias readonly align 512, [128 x float]* noalias, [128 x float]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* %4, [128 x float]* align 512 %5)
  ret void
}

define void @accel_hw_stub_wrapper([10 x float]*, float*, i32, float*) #4 {
entry:
  %4 = bitcast [10 x float]* %0 to [128 x [10 x float]]*
  %5 = bitcast float* %1 to [10 x float]*
  %6 = bitcast float* %3 to [128 x float]*
  call void @copy_out([128 x [10 x float]]* null, [128 x [10 x float]]* %4, [10 x float]* null, [10 x float]* %5, [128 x float]* null, [128 x float]* %6)
  %7 = bitcast [128 x [10 x float]]* %4 to [10 x float]*
  %8 = bitcast [10 x float]* %5 to float*
  %9 = bitcast [128 x float]* %6 to float*
  call void @accel_hw_stub([10 x float]* %7, float* %8, i32 %2, float* %9)
  call void @copy_in([128 x [10 x float]]* null, [128 x [10 x float]]* %4, [10 x float]* null, [10 x float]* %5, [128 x float]* null, [128 x float]* %6)
  ret void
}

declare void @accel_hw_stub([10 x float]*, float*, i32, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
