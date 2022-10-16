; ModuleID = '/home/jiaqiyin/autosa_output/autosa_output/mm_int16/hls_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_uint.9 = type { %struct.ap_int_base.10 }
%struct.ap_int_base.10 = type { %struct.ssdm_int.11 }
%struct.ssdm_int.11 = type { i512 }

; Function Attrs: noinline
define void @apatb_kernel0_ir(%struct.ap_uint.9* %A, %struct.ap_uint.9* %B, %struct.ap_uint.9* %C) local_unnamed_addr #0 {
entry:
  %A_copy1 = alloca i512, align 512
  %B_copy2 = alloca i512, align 512
  %C_copy3 = alloca i512, align 512
  call fastcc void @copy_in(%struct.ap_uint.9* %A, i512* nonnull align 512 %A_copy1, %struct.ap_uint.9* %B, i512* nonnull align 512 %B_copy2, %struct.ap_uint.9* %C, i512* nonnull align 512 %C_copy3)
  call void @apatb_kernel0_hw(i512* %A_copy1, i512* %B_copy2, i512* %C_copy3)
  call fastcc void @copy_out(%struct.ap_uint.9* %A, i512* nonnull align 512 %A_copy1, %struct.ap_uint.9* %B, i512* nonnull align 512 %B_copy2, %struct.ap_uint.9* %C, i512* nonnull align 512 %C_copy3)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%struct.ap_uint.9* readonly, i512* noalias align 512, %struct.ap_uint.9* readonly, i512* noalias align 512, %struct.ap_uint.9* readonly, i512* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.9.88(i512* align 512 %1, %struct.ap_uint.9* %0)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.9.88(i512* align 512 %3, %struct.ap_uint.9* %2)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.9.88(i512* align 512 %5, %struct.ap_uint.9* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%struct.ap_uint.9*, i512* noalias readonly align 512, %struct.ap_uint.9*, i512* noalias readonly align 512, %struct.ap_uint.9*, i512* noalias readonly align 512) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.9(%struct.ap_uint.9* %0, i512* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.9(%struct.ap_uint.9* %2, i512* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.9(%struct.ap_uint.9* %4, i512* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint.9.88(i512* noalias align 512, %struct.ap_uint.9* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i512* %0, null
  %3 = icmp eq %struct.ap_uint.9* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = getelementptr inbounds %struct.ap_uint.9, %struct.ap_uint.9* %1, i64 0, i32 0, i32 0, i32 0
  %6 = load i512, i512* %5, align 64
  store i512 %6, i512* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint.9(%struct.ap_uint.9* noalias, i512* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq %struct.ap_uint.9* %0, null
  %3 = icmp eq i512* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = getelementptr inbounds %struct.ap_uint.9, %struct.ap_uint.9* %0, i64 0, i32 0, i32 0, i32 0
  %6 = load i512, i512* %1, align 512
  store i512 %6, i512* %5, align 64
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_kernel0_hw(i512*, i512*, i512*)

define void @kernel0_hw_stub_wrapper(i512*, i512*, i512*) #4 {
entry:
  %3 = alloca %struct.ap_uint.9
  %4 = alloca %struct.ap_uint.9
  %5 = alloca %struct.ap_uint.9
  call void @copy_out(%struct.ap_uint.9* %3, i512* %0, %struct.ap_uint.9* %4, i512* %1, %struct.ap_uint.9* %5, i512* %2)
  call void @kernel0_hw_stub(%struct.ap_uint.9* %3, %struct.ap_uint.9* %4, %struct.ap_uint.9* %5)
  call void @copy_in(%struct.ap_uint.9* %3, i512* %0, %struct.ap_uint.9* %4, i512* %1, %struct.ap_uint.9* %5, i512* %2)
  ret void
}

declare void @kernel0_hw_stub(%struct.ap_uint.9*, %struct.ap_uint.9*, %struct.ap_uint.9*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
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
