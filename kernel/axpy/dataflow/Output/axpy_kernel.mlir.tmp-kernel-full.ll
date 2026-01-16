; ModuleID = '/home/yshi16/Desktop/dataflow/test/e2e/axpy/../../benchmark/axpy/axpy_int.cpp'
source_filename = "/home/yshi16/Desktop/dataflow/test/e2e/axpy/../../benchmark/axpy/axpy_int.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_axpy_int(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %0, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = zext nneg i32 %0 to i64
  br label %9

8:                                                ; preds = %9, %4
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = getelementptr inbounds nuw i32, ptr %2, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = mul nsw i32 %12, %1
  %14 = getelementptr inbounds nuw i32, ptr %3, i64 %10
  %15 = load i32, ptr %14, align 4, !tbaa !5
  %16 = add nsw i32 %13, %15
  store i32 %16, ptr %14, align 4, !tbaa !5
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %8, label %9, !llvm.loop !9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  %3 = add nuw nsw i64 %2, 1
  %4 = icmp eq i64 %3, 16
  br i1 %4, label %5, label %1, !llvm.loop !9

5:                                                ; preds = %1
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
