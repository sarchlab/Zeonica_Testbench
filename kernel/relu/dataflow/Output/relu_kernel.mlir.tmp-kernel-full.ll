; ModuleID = '/home/yshi16/Desktop/dataflow/test/e2e/relu/../../benchmark/CGRA-Bench/kernels/relu/relu_int.cpp'
source_filename = "/home/yshi16/Desktop/dataflow/test/e2e/relu/../../benchmark/CGRA-Bench/kernels/relu/relu_int.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input = dso_local local_unnamed_addr global [32 x i32] [i32 1, i32 -1, i32 2, i32 -3, i32 4, i32 -5, i32 6, i32 -7, i32 8, i32 -9, i32 10, i32 -11, i32 12, i32 -13, i32 14, i32 -15, i32 16, i32 -17, i32 18, i32 -19, i32 20, i32 -21, i32 22, i32 -23, i32 24, i32 -25, i32 26, i32 -27, i32 28, i32 -29, i32 30, i32 -31], align 16
@output = dso_local local_unnamed_addr global [32 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [17 x i8] c"output[%d] = %d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @output, i8 0, i64 128, i1 false), !tbaa !5
  br label %1

1:                                                ; preds = %0, %10
  %2 = phi i64 [ %11, %10 ], [ 0, %0 ]
  %3 = getelementptr inbounds nuw i32, ptr @input, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i32, ptr @output, i64 %2
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = add nsw i32 %8, %4
  store i32 %9, ptr %7, align 4, !tbaa !5
  br label %10

10:                                               ; preds = %6, %1
  %11 = add nuw nsw i64 %2, 1
  %12 = icmp eq i64 %11, 32
  br i1 %12, label %14, label %1, !llvm.loop !9

13:                                               ; preds = %14
  ret i32 0

14:                                               ; preds = %10, %14
  %15 = phi i64 [ %20, %14 ], [ 0, %10 ]
  %16 = getelementptr inbounds nuw [32 x i32], ptr @output, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = trunc nuw nsw i64 %15 to i32
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %18, i32 noundef %17)
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp eq i64 %20, 32
  br i1 %21, label %13, label %14, !llvm.loop !12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z6kernelPiS_(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  br label %4

3:                                                ; preds = %13
  ret void

4:                                                ; preds = %2, %13
  %5 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %6 = getelementptr inbounds nuw i32, ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds nuw i32, ptr %1, i64 %5
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = add nsw i32 %11, %7
  store i32 %12, ptr %10, align 4, !tbaa !5
  br label %13

13:                                               ; preds = %4, %9
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 32
  br i1 %15, label %3, label %4, !llvm.loop !9
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
