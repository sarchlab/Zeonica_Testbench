; ModuleID = '/home/yshi16/Desktop/dataflow/test/e2e/bicg/../../benchmark/CGRA-Bench/kernels/bicg/bicg.c'
source_filename = "/home/yshi16/Desktop/dataflow/test/e2e/bicg/../../benchmark/CGRA-Bench/kernels/bicg/bicg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = zext nneg i32 %0 to i64
  %11 = shl nuw nsw i64 %10, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %11, i1 false), !tbaa !5
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %18, label %43

13:                                               ; preds = %7
  %14 = icmp sgt i32 %1, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %13
  %16 = zext nneg i32 %1 to i64
  %17 = shl nuw nsw i64 %16, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %17, i1 false), !tbaa !5
  br label %43

18:                                               ; preds = %9
  %19 = zext nneg i32 %1 to i64
  %20 = zext nneg i32 %0 to i64
  br label %21

21:                                               ; preds = %18, %40
  %22 = phi i64 [ 0, %18 ], [ %41, %40 ]
  %23 = getelementptr inbounds nuw double, ptr %4, i64 %22
  store double 0.000000e+00, ptr %23, align 8, !tbaa !5
  %24 = getelementptr inbounds nuw double, ptr %6, i64 %22
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i64 [ 0, %21 ], [ %38, %25 ]
  %27 = getelementptr inbounds nuw double, ptr %3, i64 %26
  %28 = load double, ptr %27, align 8, !tbaa !5
  %29 = load double, ptr %24, align 8, !tbaa !5
  %30 = getelementptr inbounds nuw [116 x double], ptr %2, i64 %22, i64 %26
  %31 = load double, ptr %30, align 8, !tbaa !5
  %32 = tail call double @llvm.fmuladd.f64(double %29, double %31, double %28)
  store double %32, ptr %27, align 8, !tbaa !5
  %33 = load double, ptr %23, align 8, !tbaa !5
  %34 = load double, ptr %30, align 8, !tbaa !5
  %35 = getelementptr inbounds nuw double, ptr %5, i64 %26
  %36 = load double, ptr %35, align 8, !tbaa !5
  %37 = tail call double @llvm.fmuladd.f64(double %34, double %36, double %33)
  store double %37, ptr %23, align 8, !tbaa !5
  %38 = add nuw nsw i64 %26, 1
  %39 = icmp eq i64 %38, %20
  br i1 %39, label %40, label %25, !llvm.loop !9

40:                                               ; preds = %25
  %41 = add nuw nsw i64 %22, 1
  %42 = icmp eq i64 %41, %19
  br i1 %42, label %43, label %21, !llvm.loop !12

43:                                               ; preds = %40, %13, %15, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 14384, i32 noundef 8) #9
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 116, i32 noundef 8) #9
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 124, i32 noundef 8) #9
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 116, i32 noundef 8) #9
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 124, i32 noundef 8) #9
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %14, %8 ]
  %10 = trunc nuw nsw i64 %9 to i32
  %11 = uitofp nneg i32 %10 to double
  %12 = fdiv double %11, 1.160000e+02
  %13 = getelementptr inbounds nuw double, ptr %6, i64 %9
  store double %12, ptr %13, align 8, !tbaa !5
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, 116
  br i1 %15, label %16, label %8, !llvm.loop !13

16:                                               ; preds = %8, %32
  %17 = phi i64 [ %33, %32 ], [ 0, %8 ]
  %18 = trunc nuw nsw i64 %17 to i32
  %19 = uitofp nneg i32 %18 to double
  %20 = fdiv double %19, 1.240000e+02
  %21 = getelementptr inbounds nuw double, ptr %7, i64 %17
  store double %20, ptr %21, align 8, !tbaa !5
  br label %22

22:                                               ; preds = %22, %16
  %23 = phi i64 [ 0, %16 ], [ %24, %22 ]
  %24 = add nuw nsw i64 %23, 1
  %25 = mul nuw nsw i64 %24, %17
  %26 = trunc nuw nsw i64 %25 to i32
  %27 = urem i32 %26, 124
  %28 = uitofp nneg i32 %27 to double
  %29 = fdiv double %28, 1.240000e+02
  %30 = getelementptr inbounds nuw [116 x double], ptr %3, i64 %17, i64 %23
  store double %29, ptr %30, align 8, !tbaa !5
  %31 = icmp eq i64 %24, 116
  br i1 %31, label %32, label %22, !llvm.loop !14

32:                                               ; preds = %22
  %33 = add nuw nsw i64 %17, 1
  %34 = icmp eq i64 %33, 124
  br i1 %34, label %35, label %16, !llvm.loop !15

35:                                               ; preds = %32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %4, i8 0, i64 928, i1 false), !tbaa !5
  br label %36

36:                                               ; preds = %55, %35
  %37 = phi i64 [ 0, %35 ], [ %56, %55 ]
  %38 = getelementptr inbounds nuw double, ptr %5, i64 %37
  store double 0.000000e+00, ptr %38, align 8, !tbaa !5
  %39 = getelementptr inbounds nuw double, ptr %7, i64 %37
  br label %40

40:                                               ; preds = %40, %36
  %41 = phi i64 [ 0, %36 ], [ %53, %40 ]
  %42 = getelementptr inbounds nuw double, ptr %4, i64 %41
  %43 = load double, ptr %42, align 8, !tbaa !5
  %44 = load double, ptr %39, align 8, !tbaa !5
  %45 = getelementptr inbounds nuw [116 x double], ptr %3, i64 %37, i64 %41
  %46 = load double, ptr %45, align 8, !tbaa !5
  %47 = tail call double @llvm.fmuladd.f64(double %44, double %46, double %43)
  store double %47, ptr %42, align 8, !tbaa !5
  %48 = load double, ptr %38, align 8, !tbaa !5
  %49 = load double, ptr %45, align 8, !tbaa !5
  %50 = getelementptr inbounds nuw double, ptr %6, i64 %41
  %51 = load double, ptr %50, align 8, !tbaa !5
  %52 = tail call double @llvm.fmuladd.f64(double %49, double %51, double %48)
  store double %52, ptr %38, align 8, !tbaa !5
  %53 = add nuw nsw i64 %41, 1
  %54 = icmp eq i64 %53, 116
  br i1 %54, label %55, label %40, !llvm.loop !9

55:                                               ; preds = %40
  %56 = add nuw nsw i64 %37, 1
  %57 = icmp eq i64 %56, 124
  br i1 %57, label %58, label %36, !llvm.loop !12

58:                                               ; preds = %55
  %59 = icmp sgt i32 %0, 42
  br i1 %59, label %60, label %65

60:                                               ; preds = %58
  %61 = load ptr, ptr %1, align 8, !tbaa !16
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  tail call fastcc void @print_array(ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %65

65:                                               ; preds = %64, %60, %58
  tail call void @free(ptr noundef nonnull %3) #9
  tail call void @free(ptr noundef nonnull %4) #9
  tail call void @free(ptr noundef nonnull %5) #9
  tail call void @free(ptr noundef nonnull %6) #9
  tail call void @free(ptr noundef nonnull %7) #9
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !19
  %4 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 22, i64 1, ptr %3) #10
  %5 = load ptr, ptr @stderr, align 8, !tbaa !19
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  br label %7

7:                                                ; preds = %2, %15
  %8 = phi i64 [ 0, %2 ], [ %20, %15 ]
  %9 = trunc i64 %8 to i8
  %10 = urem i8 %9, 20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load ptr, ptr @stderr, align 8, !tbaa !19
  %14 = tail call i32 @fputc(i32 10, ptr %13)
  br label %15

15:                                               ; preds = %12, %7
  %16 = load ptr, ptr @stderr, align 8, !tbaa !19
  %17 = getelementptr inbounds nuw double, ptr %0, i64 %8
  %18 = load double, ptr %17, align 8, !tbaa !5
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.5, double noundef %18) #11
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, 116
  br i1 %21, label %22, label %7, !llvm.loop !21

22:                                               ; preds = %15
  %23 = load ptr, ptr @stderr, align 8, !tbaa !19
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #11
  %25 = load ptr, ptr @stderr, align 8, !tbaa !19
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7) #11
  br label %27

27:                                               ; preds = %22, %35
  %28 = phi i64 [ 0, %22 ], [ %40, %35 ]
  %29 = trunc i64 %28 to i8
  %30 = urem i8 %29, 20
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load ptr, ptr @stderr, align 8, !tbaa !19
  %34 = tail call i32 @fputc(i32 10, ptr %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load ptr, ptr @stderr, align 8, !tbaa !19
  %37 = getelementptr inbounds nuw double, ptr %1, i64 %28
  %38 = load double, ptr %37, align 8, !tbaa !5
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.5, double noundef %38) #11
  %40 = add nuw nsw i64 %28, 1
  %41 = icmp eq i64 %40, 124
  br i1 %41, label %42, label %27, !llvm.loop !22

42:                                               ; preds = %35
  %43 = load ptr, ptr @stderr, align 8, !tbaa !19
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #11
  %45 = load ptr, ptr @stderr, align 8, !tbaa !19
  %46 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %45) #10
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.7 (https://github.com/llvm/llvm-project.git 6146a88f60492b520a36f8f8f3231e15f3cc6082)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
