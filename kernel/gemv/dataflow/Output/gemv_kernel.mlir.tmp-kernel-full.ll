; ModuleID = '/home/yshi16/Desktop/dataflow/test/e2e/gemv/../../benchmark/gemv/gemv_int.cpp'
source_filename = "/home/yshi16/Desktop/dataflow/test/e2e/gemv/../../benchmark/gemv/gemv_int.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_gemv_int(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %3, %9
  %5 = phi i64 [ 0, %3 ], [ %11, %9 ]
  %6 = shl nsw i64 %5, 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  br label %13

8:                                                ; preds = %9
  ret void

9:                                                ; preds = %13
  %10 = getelementptr inbounds nuw i32, ptr %2, i64 %5
  store i32 %21, ptr %10, align 4, !tbaa !5
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %8, label %4, !llvm.loop !9

13:                                               ; preds = %4, %13
  %14 = phi i64 [ 0, %4 ], [ %22, %13 ]
  %15 = phi i32 [ 0, %4 ], [ %21, %13 ]
  %16 = getelementptr inbounds nuw i32, ptr %7, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = getelementptr inbounds nuw i32, ptr %1, i64 %14
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = mul nsw i32 %19, %17
  %21 = add nsw i32 %20, %15
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %9, label %13, !llvm.loop !12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
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
!12 = distinct !{!12, !10, !11}
