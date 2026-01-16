; ModuleID = '/home/yshi16/Desktop/dataflow/test/e2e/spmv/../../benchmark/CGRA-Bench/kernels/spmv/spmv.c'
source_filename = "/home/yshi16/Desktop/dataflow/test/e2e/spmv/../../benchmark/CGRA-Bench/kernels/spmv/spmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nnz = dso_local local_unnamed_addr global i32 100, align 4
@val = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@col = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@row = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@feature = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@output = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = load i32, ptr @nnz, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %23

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi i64 [ 0, %3 ], [ %21, %5 ]
  %7 = getelementptr inbounds nuw i32, ptr @val, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds nuw i32, ptr @col, i64 %6
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr @feature, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !5
  %14 = mul nsw i32 %13, %8
  %15 = getelementptr inbounds nuw i32, ptr @row, i64 %6
  %16 = load i32, ptr %15, align 4, !tbaa !5
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr @output, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = add nsw i32 %19, %14
  store i32 %20, ptr %18, align 4, !tbaa !5
  %21 = add nuw nsw i64 %6, 1
  %22 = icmp eq i64 %21, %4
  br i1 %22, label %23, label %5, !llvm.loop !9

23:                                               ; preds = %5, %0
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #1 {
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %26, %10 ]
  %12 = getelementptr inbounds nuw i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !5
  %14 = getelementptr inbounds nuw i32, ptr %2, i64 %11
  %15 = load i32, ptr %14, align 4, !tbaa !5
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %4, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = mul nsw i32 %18, %13
  %20 = getelementptr inbounds nuw i32, ptr %3, i64 %11
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %5, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = add nsw i32 %24, %19
  store i32 %25, ptr %23, align 4, !tbaa !5
  %26 = add nuw nsw i64 %11, 1
  %27 = icmp eq i64 %26, %9
  br i1 %27, label %28, label %10, !llvm.loop !9

28:                                               ; preds = %10, %6
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.7 (https://github.com/llvm/llvm-project.git 6146a88f60492b520a36f8f8f3231e15f3cc6082)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
