; ModuleID = '/home/yshi16/Desktop/dataflow/test/e2e/mvt/../../benchmark/CGRA-Bench/kernels/mvt/mvt.c'
source_filename = "/home/yshi16/Desktop/dataflow/test/e2e/mvt/../../benchmark/CGRA-Bench/kernels/mvt/mvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #10
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #10
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #10
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #10
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #10
  tail call fastcc void @init_array(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %3)
  tail call fastcc void @kernel_mvt(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %3)
  %8 = icmp sgt i32 %0, 42
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !5
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call fastcc void @print_array(ptr noundef %4, ptr noundef %5)
  br label %14

14:                                               ; preds = %13, %9, %2
  tail call void @free(ptr noundef %3) #10
  tail call void @free(ptr noundef %4) #10
  tail call void @free(ptr noundef %5) #10
  tail call void @free(ptr noundef %6) #10
  tail call void @free(ptr noundef %7) #10
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #2 {
  br label %6

6:                                                ; preds = %5, %33
  %7 = phi i64 [ 0, %5 ], [ %34, %33 ]
  %8 = getelementptr inbounds nuw double, ptr %0, i64 %7
  store double 0.000000e+00, ptr %8, align 8, !tbaa !10
  %9 = getelementptr inbounds nuw double, ptr %1, i64 %7
  store double 0.000000e+00, ptr %9, align 8, !tbaa !10
  %10 = icmp samesign ult i64 %7, 1997
  %11 = select i1 %10, i32 3, i32 -1997
  %12 = trunc nuw nsw i64 %7 to i32
  %13 = add nsw i32 %11, %12
  %14 = uitofp nneg i32 %13 to double
  %15 = fdiv double %14, 2.000000e+03
  %16 = getelementptr inbounds nuw double, ptr %2, i64 %7
  store double %15, ptr %16, align 8, !tbaa !10
  %17 = icmp samesign ult i64 %7, 1996
  %18 = select i1 %17, i32 4, i32 -1996
  %19 = add nsw i32 %18, %12
  %20 = uitofp nneg i32 %19 to double
  %21 = fdiv double %20, 2.000000e+03
  %22 = getelementptr inbounds nuw double, ptr %3, i64 %7
  store double %21, ptr %22, align 8, !tbaa !10
  br label %23

23:                                               ; preds = %6, %23
  %24 = phi i64 [ 0, %6 ], [ %31, %23 ]
  %25 = mul nuw nsw i64 %24, %7
  %26 = trunc nuw nsw i64 %25 to i32
  %27 = urem i32 %26, 2000
  %28 = uitofp nneg i32 %27 to double
  %29 = fdiv double %28, 2.000000e+03
  %30 = getelementptr inbounds nuw [2000 x double], ptr %4, i64 %7, i64 %24
  store double %29, ptr %30, align 8, !tbaa !10
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, 2000
  br i1 %32, label %33, label %23, !llvm.loop !12

33:                                               ; preds = %23
  %34 = add nuw nsw i64 %7, 1
  %35 = icmp eq i64 %34, 2000
  br i1 %35, label %36, label %6, !llvm.loop !15

36:                                               ; preds = %33
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_mvt(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #3 {
  %6 = getelementptr i8, ptr %0, i64 16000
  %7 = getelementptr i8, ptr %1, i64 16000
  %8 = getelementptr i8, ptr %4, i64 32000000
  %9 = getelementptr i8, ptr %2, i64 16000
  %10 = insertelement <4 x ptr> poison, ptr %1, i64 0
  %11 = insertelement <4 x ptr> %10, ptr %4, i64 1
  %12 = insertelement <4 x ptr> %11, ptr %2, i64 2
  %13 = insertelement <4 x ptr> %12, ptr %3, i64 3
  %14 = getelementptr i8, <4 x ptr> %13, <4 x i64> <i64 16000, i64 32000000, i64 16000, i64 16000>
  %15 = getelementptr i8, ptr %3, i64 16000
  %16 = insertelement <4 x ptr> poison, ptr %0, i64 0
  %17 = shufflevector <4 x ptr> %16, <4 x ptr> poison, <4 x i32> zeroinitializer
  %18 = insertelement <4 x ptr> poison, ptr %6, i64 0
  %19 = shufflevector <4 x ptr> %18, <4 x ptr> poison, <4 x i32> zeroinitializer
  %20 = icmp ult <4 x ptr> %17, %14
  %21 = icmp ult <4 x ptr> %13, %19
  %22 = and <4 x i1> %20, %21
  %23 = icmp ult ptr %1, %8
  %24 = icmp ult ptr %4, %7
  %25 = and i1 %23, %24
  %26 = icmp ult ptr %1, %9
  %27 = icmp ult ptr %2, %7
  %28 = and i1 %26, %27
  %29 = icmp ult ptr %1, %15
  %30 = icmp ult ptr %3, %7
  %31 = and i1 %29, %30
  %32 = bitcast <4 x i1> %22 to i4
  %33 = icmp ne i4 %32, 0
  %34 = or i1 %33, %25
  %35 = or i1 %28, %31
  %36 = or i1 %34, %35
  br label %37

37:                                               ; preds = %5, %91
  %38 = phi i64 [ 0, %5 ], [ %92, %91 ]
  %39 = getelementptr inbounds nuw double, ptr %2, i64 %38
  %40 = getelementptr inbounds nuw double, ptr %3, i64 %38
  br i1 %36, label %75, label %41

41:                                               ; preds = %37
  %42 = load double, ptr %39, align 8, !tbaa !10, !alias.scope !16
  %43 = insertelement <4 x double> poison, double %42, i64 0
  %44 = shufflevector <4 x double> %43, <4 x double> poison, <4 x i32> zeroinitializer
  %45 = load double, ptr %40, align 8, !tbaa !10, !alias.scope !19
  %46 = insertelement <4 x double> poison, double %45, i64 0
  %47 = shufflevector <4 x double> %46, <4 x double> poison, <4 x i32> zeroinitializer
  br label %48

48:                                               ; preds = %41, %48
  %49 = phi i64 [ %73, %48 ], [ 0, %41 ]
  %50 = or disjoint i64 %49, 1
  %51 = or disjoint i64 %49, 2
  %52 = or disjoint i64 %49, 3
  %53 = getelementptr inbounds nuw double, ptr %0, i64 %49
  %54 = load <4 x double>, ptr %53, align 8, !tbaa !10, !alias.scope !21, !noalias !23
  %55 = getelementptr inbounds nuw [2000 x double], ptr %4, i64 %49, i64 %38
  %56 = getelementptr inbounds nuw [2000 x double], ptr %4, i64 %50, i64 %38
  %57 = getelementptr inbounds nuw [2000 x double], ptr %4, i64 %51, i64 %38
  %58 = getelementptr inbounds nuw [2000 x double], ptr %4, i64 %52, i64 %38
  %59 = load double, ptr %55, align 8, !tbaa !10, !alias.scope !27
  %60 = load double, ptr %56, align 8, !tbaa !10, !alias.scope !27
  %61 = load double, ptr %57, align 8, !tbaa !10, !alias.scope !27
  %62 = load double, ptr %58, align 8, !tbaa !10, !alias.scope !27
  %63 = insertelement <4 x double> poison, double %59, i64 0
  %64 = insertelement <4 x double> %63, double %60, i64 1
  %65 = insertelement <4 x double> %64, double %61, i64 2
  %66 = insertelement <4 x double> %65, double %62, i64 3
  %67 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %66, <4 x double> %44, <4 x double> %54)
  store <4 x double> %67, ptr %53, align 8, !tbaa !10, !alias.scope !21, !noalias !23
  %68 = getelementptr inbounds nuw double, ptr %1, i64 %49
  %69 = load <4 x double>, ptr %68, align 8, !tbaa !10, !alias.scope !28, !noalias !29
  %70 = getelementptr inbounds nuw [2000 x double], ptr %4, i64 %38, i64 %49
  %71 = load <4 x double>, ptr %70, align 8, !tbaa !10, !alias.scope !30
  %72 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %71, <4 x double> %47, <4 x double> %69)
  store <4 x double> %72, ptr %68, align 8, !tbaa !10, !alias.scope !28, !noalias !29
  %73 = add nuw i64 %49, 4
  %74 = icmp eq i64 %73, 2000
  br i1 %74, label %91, label %48, !llvm.loop !31

75:                                               ; preds = %37, %75
  %76 = phi i64 [ %89, %75 ], [ 0, %37 ]
  %77 = getelementptr inbounds nuw double, ptr %0, i64 %76
  %78 = load double, ptr %77, align 8, !tbaa !10
  %79 = getelementptr inbounds nuw [2000 x double], ptr %4, i64 %76, i64 %38
  %80 = load double, ptr %79, align 8, !tbaa !10
  %81 = load double, ptr %39, align 8, !tbaa !10
  %82 = tail call double @llvm.fmuladd.f64(double %80, double %81, double %78)
  store double %82, ptr %77, align 8, !tbaa !10
  %83 = getelementptr inbounds nuw double, ptr %1, i64 %76
  %84 = load double, ptr %83, align 8, !tbaa !10
  %85 = getelementptr inbounds nuw [2000 x double], ptr %4, i64 %38, i64 %76
  %86 = load double, ptr %85, align 8, !tbaa !10
  %87 = load double, ptr %40, align 8, !tbaa !10
  %88 = tail call double @llvm.fmuladd.f64(double %86, double %87, double %84)
  store double %88, ptr %83, align 8, !tbaa !10
  %89 = add nuw nsw i64 %76, 1
  %90 = icmp eq i64 %89, 2000
  br i1 %90, label %91, label %75, !llvm.loop !36

91:                                               ; preds = %48, %75
  %92 = add nuw nsw i64 %38, 1
  %93 = icmp eq i64 %92, 2000
  br i1 %93, label %94, label %37, !llvm.loop !37

94:                                               ; preds = %91
  ret void
}

; Function Attrs: cold nofree noinline nounwind uwtable
define internal fastcc void @print_array(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !38
  %4 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 22, i64 1, ptr %3) #11
  %5 = load ptr, ptr @stderr, align 8, !tbaa !38
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  br label %7

7:                                                ; preds = %2, %15
  %8 = phi i64 [ 0, %2 ], [ %20, %15 ]
  %9 = trunc i64 %8 to i16
  %10 = urem i16 %9, 20
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load ptr, ptr @stderr, align 8, !tbaa !38
  %14 = tail call i32 @fputc(i32 10, ptr %13)
  br label %15

15:                                               ; preds = %12, %7
  %16 = load ptr, ptr @stderr, align 8, !tbaa !38
  %17 = getelementptr inbounds nuw double, ptr %0, i64 %8
  %18 = load double, ptr %17, align 8, !tbaa !10
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.5, double noundef %18) #12
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, 2000
  br i1 %21, label %22, label %7, !llvm.loop !40

22:                                               ; preds = %15
  %23 = load ptr, ptr @stderr, align 8, !tbaa !38
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #12
  %25 = load ptr, ptr @stderr, align 8, !tbaa !38
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7) #12
  br label %27

27:                                               ; preds = %22, %35
  %28 = phi i64 [ 0, %22 ], [ %40, %35 ]
  %29 = trunc i64 %28 to i16
  %30 = urem i16 %29, 20
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load ptr, ptr @stderr, align 8, !tbaa !38
  %34 = tail call i32 @fputc(i32 10, ptr %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load ptr, ptr @stderr, align 8, !tbaa !38
  %37 = getelementptr inbounds nuw double, ptr %1, i64 %28
  %38 = load double, ptr %37, align 8, !tbaa !10
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.5, double noundef %38) #12
  %40 = add nuw nsw i64 %28, 1
  %41 = icmp eq i64 %40, 2000
  br i1 %41, label %42, label %27, !llvm.loop !41

42:                                               ; preds = %35
  %43 = load ptr, ptr @stderr, align 8, !tbaa !38
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #12
  %45 = load ptr, ptr @stderr, align 8, !tbaa !38
  %46 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %45) #11
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.7 (https://github.com/llvm/llvm-project.git 6146a88f60492b520a36f8f8f3231e15f3cc6082)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = !{!22}
!22 = distinct !{!22, !18}
!23 = !{!24, !25, !26, !17, !20}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = !{!26}
!28 = !{!24}
!29 = !{!25, !26, !17, !20}
!30 = !{!25}
!31 = distinct !{!31, !32, !35}
!32 = distinct !{!32, !13, !33, !34}
!33 = !{!"llvm.loop.isvectorized"}
!34 = !{!"llvm.loop.unroll.count", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !32}
!37 = distinct !{!37, !13, !34}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!40 = distinct !{!40, !13, !14}
!41 = distinct !{!41, !13, !14}
