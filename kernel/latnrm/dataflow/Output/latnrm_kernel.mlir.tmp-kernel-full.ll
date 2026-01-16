; ModuleID = '/home/yshi16/Desktop/dataflow/test/e2e/latnrm/latnrm.c'
source_filename = "/home/yshi16/Desktop/dataflow/test/e2e/latnrm/latnrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@coefficient = dso_local global [16 x float] [float 2.500000e-01, float 1.500000e+00, float 3.750000e+00, float -2.250000e+00, float 5.000000e-01, float 7.500000e-01, float -3.000000e+00, float 1.250000e+00, float 0x3FC99999A0000000, float 0x3FCC28F5C0000000, float 0x4002666660000000, float 0x4000CCCCC0000000, float 0x3FDEB851E0000000, float 0x3FD1EB8520000000, float 0xC003333340000000, float 0x4016666660000000], align 16
@internal_state = dso_local global [16 x float] [float 2.500000e-01, float 1.500000e+00, float 3.750000e+00, float -2.250000e+00, float 5.000000e-01, float 7.500000e-01, float -3.000000e+00, float 1.250000e+00, float 0x3FC99999A0000000, float 0x3FCC28F5C0000000, float 0x4002666660000000, float 0x4000CCCCC0000000, float 0x3FDEB851E0000000, float 0x3FD1EB8520000000, float 0xC003333340000000, float 0x4016666660000000], align 16
@input = dso_local global float 0.000000e+00, align 4
@output = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = load float, ptr @input, align 4
  call void @kernel(float noundef %2, ptr noundef @output, ptr noundef @coefficient, ptr noundef @internal_state)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel(float noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store float %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %19 = load float, ptr %5, align 4
  store float %19, ptr %12, align 4
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds float, ptr %20, i64 0
  %22 = load float, ptr %21, align 4
  store float %22, ptr %14, align 4
  store i32 0, ptr %9, align 4
  br label %23

23:                                               ; preds = %64, %4
  %24 = load i32, ptr %9, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %67

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 8
  %28 = load i32, ptr %9, align 4
  %29 = mul nsw i32 2, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, ptr %27, i64 %30
  %32 = load float, ptr %31, align 4
  store float %32, ptr %15, align 4
  %33 = load float, ptr %12, align 4
  store float %33, ptr %10, align 4
  %34 = load ptr, ptr %8, align 8
  %35 = load i32, ptr %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, ptr %34, i64 %36
  %38 = load float, ptr %37, align 4
  store float %38, ptr %11, align 4
  %39 = load float, ptr %13, align 4
  %40 = load ptr, ptr %8, align 8
  %41 = load i32, ptr %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, ptr %40, i64 %42
  store float %39, ptr %43, align 4
  %44 = load float, ptr %14, align 4
  %45 = load float, ptr %10, align 4
  %46 = load float, ptr %15, align 4
  %47 = load float, ptr %11, align 4
  %48 = fmul float %46, %47
  %49 = fneg float %48
  %50 = call float @llvm.fmuladd.f32(float %44, float %45, float %49)
  store float %50, ptr %12, align 4
  %51 = load float, ptr %14, align 4
  %52 = load float, ptr %11, align 4
  %53 = load float, ptr %15, align 4
  %54 = load float, ptr %10, align 4
  %55 = fmul float %53, %54
  %56 = call float @llvm.fmuladd.f32(float %51, float %52, float %55)
  store float %56, ptr %13, align 4
  %57 = load ptr, ptr %7, align 8
  %58 = load i32, ptr %9, align 4
  %59 = mul nsw i32 2, %58
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, ptr %57, i64 %61
  %63 = load float, ptr %62, align 4
  store float %63, ptr %14, align 4
  br label %64

64:                                               ; preds = %26
  %65 = load i32, ptr %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %9, align 4
  br label %23, !llvm.loop !6

67:                                               ; preds = %23
  %68 = load float, ptr %13, align 4
  %69 = load ptr, ptr %8, align 8
  %70 = load i32, ptr %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %9, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds float, ptr %69, i64 %72
  store float %68, ptr %73, align 4
  %74 = load float, ptr %12, align 4
  %75 = load ptr, ptr %8, align 8
  %76 = load i32, ptr %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, ptr %75, i64 %77
  store float %74, ptr %78, align 4
  %79 = load ptr, ptr %8, align 8
  %80 = getelementptr inbounds float, ptr %79, i64 1
  %81 = load float, ptr %80, align 4
  %82 = load float, ptr %14, align 4
  %83 = fmul float %81, %82
  store float %83, ptr %18, align 4
  store i32 1, ptr %9, align 4
  br label %84

84:                                               ; preds = %102, %67
  %85 = load i32, ptr %9, align 4
  %86 = icmp slt i32 %85, 8
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load ptr, ptr %8, align 8
  %89 = load i32, ptr %9, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, ptr %88, i64 %91
  %93 = load float, ptr %92, align 4
  %94 = load ptr, ptr %7, align 8
  %95 = load i32, ptr %9, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, ptr %94, i64 %97
  %99 = load float, ptr %98, align 4
  %100 = load float, ptr %18, align 4
  %101 = call float @llvm.fmuladd.f32(float %93, float %99, float %100)
  store float %101, ptr %18, align 4
  br label %102

102:                                              ; preds = %87
  %103 = load i32, ptr %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %9, align 4
  br label %84, !llvm.loop !10

105:                                              ; preds = %84
  %106 = load float, ptr %18, align 4
  %107 = load ptr, ptr %6, align 8
  store float %106, ptr %107, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 20.1.7 (https://github.com/llvm/llvm-project.git 6146a88f60492b520a36f8f8f3231e15f3cc6082)"}
!6 = distinct !{!6, !7, !8, !9}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = !{!"llvm.loop.vectorize.width", i32 1}
!10 = distinct !{!10, !7}
