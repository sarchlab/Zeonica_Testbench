; ModuleID = '/home/yshi16/Desktop/dataflow/test/e2e/axpy/../../benchmark/axpy/axpy.cpp'
source_filename = "/home/yshi16/Desktop/dataflow/test/e2e/axpy/../../benchmark/axpy/axpy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global float 2.500000e+00, align 4
@x = dso_local local_unnamed_addr global [20 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01], align 16
@y = dso_local local_unnamed_addr global [20 x float] [float 0x3FB99999A0000000, float 0x3FC99999A0000000, float 0x3FD3333340000000, float 0x3FD99999A0000000, float 5.000000e-01, float 0x3FE3333340000000, float 0x3FE6666660000000, float 0x3FE99999A0000000, float 0x3FECCCCCC0000000, float 1.000000e+00, float 0x3FF19999A0000000, float 0x3FF3333340000000, float 0x3FF4CCCCC0000000, float 0x3FF6666660000000, float 1.500000e+00, float 0x3FF99999A0000000, float 0x3FFB333340000000, float 0x3FFCCCCCC0000000, float 0x3FFE666660000000, float 2.000000e+00], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"DATA_LEN: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Scalar a: %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"x: \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%.1f \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"y: \00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"  Error at index %d: expected %.6f, got %.6f (diff: %.6f)\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"  All %d elements verified successfully!\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"  Found %d errors\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"After kernel (y = %.1f * x + y_original):\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"AXPY test: y = a * x + y\00", align 1
@str.14 = private unnamed_addr constant [16 x i8] c"\0ABefore kernel:\00", align 1
@str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.16 = private unnamed_addr constant [15 x i8] c"\0AVerification:\00", align 1

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [20 x float], align 16
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 20)
  %6 = load float, ptr @a, align 4, !tbaa !5
  %7 = fpext float %6 to double
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %7)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %14

11:                                               ; preds = %14
  %12 = tail call i32 @putchar(i32 10)
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7)
  br label %50

14:                                               ; preds = %2, %14
  %15 = phi i64 [ 0, %2 ], [ %20, %14 ]
  %16 = getelementptr inbounds nuw [20 x float], ptr @x, i64 0, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = fpext float %17 to double
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %18)
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp eq i64 %20, 20
  br i1 %21, label %11, label %14, !llvm.loop !9

22:                                               ; preds = %50
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %3, ptr noundef nonnull align 16 dereferenceable(80) @y, i64 80, i1 false)
  %24 = load float, ptr @a, align 4, !tbaa !5
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi i64 [ 0, %22 ], [ %32, %25 ]
  %27 = getelementptr inbounds nuw float, ptr @x, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !5
  %29 = getelementptr inbounds nuw float, ptr @y, i64 %26
  %30 = load float, ptr %29, align 4, !tbaa !5
  %31 = tail call float @llvm.fmuladd.f32(float %24, float %28, float %30)
  store float %31, ptr %29, align 4, !tbaa !5
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, 20
  br i1 %33, label %34, label %25, !llvm.loop !12

34:                                               ; preds = %25
  %35 = fpext float %24 to double
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %35)
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7)
  br label %38

38:                                               ; preds = %38, %34
  %39 = phi i64 [ 0, %34 ], [ %44, %38 ]
  %40 = getelementptr inbounds nuw float, ptr @y, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !5
  %42 = fpext float %41 to double
  %43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %42)
  %44 = add nuw nsw i64 %39, 1
  %45 = icmp eq i64 %44, 20
  br i1 %45, label %46, label %38, !llvm.loop !13

46:                                               ; preds = %38
  %47 = tail call i32 @putchar(i32 10)
  %48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  %49 = load float, ptr @a, align 4, !tbaa !5
  br label %60

50:                                               ; preds = %11, %50
  %51 = phi i64 [ 0, %11 ], [ %56, %50 ]
  %52 = getelementptr inbounds nuw [20 x float], ptr @y, i64 0, i64 %51
  %53 = load float, ptr %52, align 4, !tbaa !5
  %54 = fpext float %53 to double
  %55 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %54)
  %56 = add nuw nsw i64 %51, 1
  %57 = icmp eq i64 %56, 20
  br i1 %57, label %22, label %50, !llvm.loop !14

58:                                               ; preds = %82
  %59 = icmp ne i32 %84, 0
  br i1 %59, label %89, label %87

60:                                               ; preds = %46, %82
  %61 = phi float [ %49, %46 ], [ %83, %82 ]
  %62 = phi i64 [ 0, %46 ], [ %85, %82 ]
  %63 = phi i32 [ 0, %46 ], [ %84, %82 ]
  %64 = getelementptr inbounds nuw [20 x float], ptr @x, i64 0, i64 %62
  %65 = load float, ptr %64, align 4, !tbaa !5
  %66 = getelementptr inbounds nuw [20 x float], ptr %3, i64 0, i64 %62
  %67 = load float, ptr %66, align 4, !tbaa !5
  %68 = tail call float @llvm.fmuladd.f32(float %61, float %65, float %67)
  %69 = getelementptr inbounds nuw [20 x float], ptr @y, i64 0, i64 %62
  %70 = load float, ptr %69, align 4, !tbaa !5
  %71 = fsub float %70, %68
  %72 = tail call float @llvm.fabs.f32(float %71)
  %73 = fcmp ogt float %72, 0x3EE4F8B580000000
  br i1 %73, label %74, label %82

74:                                               ; preds = %60
  %75 = fpext float %68 to double
  %76 = fpext float %70 to double
  %77 = fpext float %72 to double
  %78 = trunc nuw nsw i64 %62 to i32
  %79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %78, double noundef %75, double noundef %76, double noundef %77)
  %80 = add nsw i32 %63, 1
  %81 = load float, ptr @a, align 4, !tbaa !5
  br label %82

82:                                               ; preds = %74, %60
  %83 = phi float [ %81, %74 ], [ %61, %60 ]
  %84 = phi i32 [ %80, %74 ], [ %63, %60 ]
  %85 = add nuw nsw i64 %62, 1
  %86 = icmp eq i64 %85, 20
  br i1 %86, label %58, label %60, !llvm.loop !15

87:                                               ; preds = %58
  %88 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef 20)
  br label %91

89:                                               ; preds = %58
  %90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %84)
  br label %91

91:                                               ; preds = %89, %87
  %92 = zext i1 %59 to i32
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %92
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z11kernel_axpyifPfS_(i32 noundef %0, float noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #4 {
  %5 = icmp sgt i32 %0, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = zext nneg i32 %0 to i64
  br label %9

8:                                                ; preds = %9, %4
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %16, %9 ]
  %11 = getelementptr inbounds nuw float, ptr %2, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !5
  %13 = getelementptr inbounds nuw float, ptr %3, i64 %10
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = tail call float @llvm.fmuladd.f32(float %1, float %12, float %14)
  store float %15, ptr %13, align 4, !tbaa !5
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %8, label %9, !llvm.loop !12
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z6outputifPKfS0_(i32 noundef %0, float noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #5 {
  %5 = fpext float %1 to double
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %5)
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7)
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = zext nneg i32 %0 to i64
  br label %13

11:                                               ; preds = %13, %4
  %12 = tail call i32 @putchar(i32 10)
  ret void

13:                                               ; preds = %9, %13
  %14 = phi i64 [ 0, %9 ], [ %19, %13 ]
  %15 = getelementptr inbounds nuw float, ptr %3, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = fpext float %16 to double
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %17)
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %11, label %13, !llvm.loop !13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.7 (https://github.com/llvm/llvm-project.git 6146a88f60492b520a36f8f8f3231e15f3cc6082)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
