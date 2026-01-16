; ModuleID = '/home/yshi16/Desktop/dataflow/test/e2e/histogram/../../benchmark/CGRA-Bench/kernels/histogram/histogram_int.cpp'
source_filename = "/home/yshi16/Desktop/dataflow/test/e2e/histogram/../../benchmark/CGRA-Bench/kernels/histogram/histogram_int.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_data = dso_local local_unnamed_addr global [20 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 19], align 16
@histogram = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [27 x i8] c"DATA_LEN %d BUCKET_LEN %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"min %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"del %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 20, i32 noundef 5)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %15, %4 ]
  %6 = getelementptr inbounds nuw i32, ptr @input_data, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = mul i32 %7, 5
  %9 = add i32 %8, -5
  %10 = sdiv i32 %9, 18
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr @histogram, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !5
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !5
  %15 = add nuw nsw i64 %5, 1
  %16 = icmp eq i64 %15, 20
  br i1 %16, label %17, label %4, !llvm.loop !9

17:                                               ; preds = %4
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 5)
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 1)
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 18)
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i64 [ 0, %17 ], [ %26, %21 ]
  %23 = getelementptr inbounds nuw [5 x i32], ptr @histogram, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %24)
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, 5
  br i1 %27, label %28, label %21, !llvm.loop !12

28:                                               ; preds = %21
  %29 = tail call i32 @putchar(i32 10)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z6kernelPiS_(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %14, %3 ]
  %5 = getelementptr inbounds nuw i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = mul i32 %6, 5
  %8 = add i32 %7, -5
  %9 = sdiv i32 %8, 18
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !5
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 20
  br i1 %15, label %16, label %3, !llvm.loop !9

16:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z6outputv() local_unnamed_addr #3 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 5)
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 1)
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 18)
  br label %6

4:                                                ; preds = %6
  %5 = tail call i32 @putchar(i32 10)
  ret void

6:                                                ; preds = %0, %6
  %7 = phi i64 [ 0, %0 ], [ %11, %6 ]
  %8 = getelementptr inbounds nuw [5 x i32], ptr @histogram, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %9)
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 5
  br i1 %12, label %4, label %6, !llvm.loop !12
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }

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
