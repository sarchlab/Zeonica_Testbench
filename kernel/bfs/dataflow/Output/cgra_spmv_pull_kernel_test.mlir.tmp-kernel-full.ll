; ModuleID = '/home/yshi16/Desktop/dataflow/test/e2e/bfs/../../benchmark/bfs/bfs.cpp'
source_filename = "/home/yshi16/Desktop/dataflow/test/e2e/bfs/../../benchmark/bfs/bfs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.edges = private unnamed_addr constant [5 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 3, i32 4]], align 16
@.str = private unnamed_addr constant [15 x i8] c"dist from %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"  node %d -> %d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z21cgra_spmv_pull_kerneliPKiS0_PKhPt(i32 noundef %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef readonly %2, ptr noalias nocapture noundef readonly %3, ptr noalias nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = zext nneg i32 %0 to i64
  %9 = load i32, ptr %1, align 4, !tbaa !5
  br label %11

10:                                               ; preds = %21, %5
  ret void

11:                                               ; preds = %7, %21
  %12 = phi i32 [ %9, %7 ], [ %16, %21 ]
  %13 = phi i64 [ 0, %7 ], [ %14, %21 ]
  %14 = add nuw nsw i64 %13, 1
  %15 = getelementptr inbounds nuw i32, ptr %1, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !5
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = sext i32 %12 to i64
  %20 = sext i32 %16 to i64
  br label %25

21:                                               ; preds = %25, %11
  %22 = phi i16 [ 0, %11 ], [ %34, %25 ]
  %23 = getelementptr inbounds nuw i16, ptr %4, i64 %13
  store i16 %22, ptr %23, align 2, !tbaa !9
  %24 = icmp eq i64 %14, %8
  br i1 %24, label %10, label %11, !llvm.loop !11

25:                                               ; preds = %18, %25
  %26 = phi i64 [ %19, %18 ], [ %35, %25 ]
  %27 = phi i16 [ 0, %18 ], [ %34, %25 ]
  %28 = getelementptr inbounds i32, ptr %2, i64 %26
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %3, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !14
  %33 = zext i8 %32 to i16
  %34 = add i16 %27, %33
  %35 = add nsw i64 %26, 1
  %36 = icmp eq i64 %35, %20
  br i1 %36, label %21, label %25, !llvm.loop !15
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z25bfs_pull_with_cgra_kerneliPKiS0_iPi(i32 noundef %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef readonly %2, i32 noundef %3, ptr noalias nocapture noundef writeonly %4) local_unnamed_addr #1 {
  %6 = sext i32 %0 to i64
  %7 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 1) #10
  %8 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 1) #10
  %9 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 1) #10
  %10 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 2) #10
  %11 = icmp sgt i32 %0, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds i32, ptr %4, i64 %13
  store i32 0, ptr %14, align 4, !tbaa !5
  br label %80

15:                                               ; preds = %5
  %16 = zext nneg i32 %0 to i64
  %17 = shl nuw nsw i64 %16, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 -1, i64 %17, i1 false), !tbaa !5
  %18 = sext i32 %3 to i64
  %19 = getelementptr inbounds i8, ptr %8, i64 %18
  store i8 1, ptr %19, align 1, !tbaa !14
  %20 = getelementptr inbounds i8, ptr %7, i64 %18
  store i8 1, ptr %20, align 1, !tbaa !14
  %21 = getelementptr inbounds i32, ptr %4, i64 %18
  store i32 0, ptr %21, align 4, !tbaa !5
  %22 = zext nneg i32 %0 to i64
  %23 = load i32, ptr %1, align 4, !tbaa !5, !alias.scope !16, !noalias !19
  br label %24

24:                                               ; preds = %79, %15
  %25 = phi i32 [ 0, %15 ], [ %53, %79 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  br label %26

26:                                               ; preds = %48, %24
  %27 = phi i32 [ %23, %24 ], [ %31, %48 ]
  %28 = phi i64 [ 0, %24 ], [ %29, %48 ]
  %29 = add nuw nsw i64 %28, 1
  %30 = getelementptr inbounds nuw i32, ptr %1, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !5, !alias.scope !16, !noalias !19
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = sext i32 %27 to i64
  %35 = sext i32 %31 to i64
  br label %36

36:                                               ; preds = %36, %33
  %37 = phi i64 [ %34, %33 ], [ %46, %36 ]
  %38 = phi i16 [ 0, %33 ], [ %45, %36 ]
  %39 = getelementptr inbounds i32, ptr %2, i64 %37
  %40 = load i32, ptr %39, align 4, !tbaa !5, !alias.scope !23, !noalias !26
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %8, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !14, !alias.scope !24, !noalias !27
  %44 = zext i8 %43 to i16
  %45 = add i16 %38, %44
  %46 = add nsw i64 %37, 1
  %47 = icmp eq i64 %46, %35
  br i1 %47, label %48, label %36, !llvm.loop !15

48:                                               ; preds = %36, %26
  %49 = phi i16 [ 0, %26 ], [ %45, %36 ]
  %50 = getelementptr inbounds nuw i16, ptr %10, i64 %28
  store i16 %49, ptr %50, align 2, !tbaa !9, !alias.scope !25, !noalias !28
  %51 = icmp eq i64 %29, %22
  br i1 %51, label %52, label %26, !llvm.loop !11

52:                                               ; preds = %48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %53 = add nuw nsw i32 %25, 1
  br label %54

54:                                               ; preds = %73, %52
  %55 = phi i64 [ %76, %73 ], [ 0, %52 ]
  %56 = phi i1 [ false, %73 ], [ true, %52 ]
  br label %57

57:                                               ; preds = %54, %70
  %58 = phi i64 [ %71, %70 ], [ %55, %54 ]
  %59 = getelementptr inbounds nuw i8, ptr %7, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !14, !alias.scope !32, !noalias !38
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 %58
  store i8 0, ptr %63, align 1, !tbaa !14, !alias.scope !34, !noalias !39
  br label %70

64:                                               ; preds = %57
  %65 = getelementptr inbounds nuw i16, ptr %10, i64 %58
  %66 = load i16, ptr %65, align 2, !tbaa !9, !alias.scope !29, !noalias !40
  %67 = icmp ne i16 %66, 0
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds nuw i8, ptr %9, i64 %58
  store i8 %68, ptr %69, align 1, !tbaa !14, !alias.scope !34, !noalias !39
  br i1 %67, label %73, label %70

70:                                               ; preds = %64, %62
  %71 = add nuw nsw i64 %58, 1
  %72 = icmp eq i64 %71, %22
  br i1 %72, label %78, label %57, !llvm.loop !41

73:                                               ; preds = %64
  %74 = getelementptr inbounds nuw i8, ptr %7, i64 %58
  store i8 1, ptr %74, align 1, !tbaa !14, !alias.scope !32, !noalias !38
  %75 = getelementptr inbounds nuw i32, ptr %4, i64 %58
  store i32 %53, ptr %75, align 4, !tbaa !5, !alias.scope !36, !noalias !42
  %76 = add nuw nsw i64 %58, 1
  %77 = icmp eq i64 %76, %22
  br i1 %77, label %79, label %54, !llvm.loop !41

78:                                               ; preds = %70
  br i1 %56, label %80, label %79

79:                                               ; preds = %73, %78
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr nonnull align 1 %9, i64 %6, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %9, i8 0, i64 %6, i1 false)
  br label %24

80:                                               ; preds = %78, %12
  tail call void @free(ptr noundef nonnull %7) #11
  tail call void @free(ptr noundef %8) #11
  tail call void @free(ptr noundef %9) #11
  tail call void @free(ptr noundef %10) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #6 {
  %1 = tail call noalias dereferenceable_or_null(20) ptr @calloc(i64 noundef 5, i64 noundef 4) #10
  br label %4

2:                                                ; preds = %14
  %3 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #12
  store i32 0, ptr %3, align 4, !tbaa !5
  br label %24

4:                                                ; preds = %14, %0
  %5 = phi i64 [ 0, %0 ], [ %15, %14 ]
  %6 = getelementptr inbounds nuw [2 x i32], ptr @__const.main.edges, i64 %5
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp ult i32 %7, 5
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds nuw i32, ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !5
  br label %14

14:                                               ; preds = %9, %4
  %15 = add nuw nsw i64 %5, 1
  %16 = icmp eq i64 %15, 5
  br i1 %16, label %2, label %4, !llvm.loop !43

17:                                               ; preds = %24
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call noalias ptr @malloc(i64 noundef %21) #12
  %23 = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %23, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false)
  br label %33

24:                                               ; preds = %24, %2
  %25 = phi i32 [ 0, %2 ], [ %29, %24 ]
  %26 = phi i64 [ 0, %2 ], [ %30, %24 ]
  %27 = getelementptr inbounds nuw i32, ptr %1, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !5
  %29 = add nsw i32 %28, %25
  %30 = add nuw nsw i64 %26, 1
  %31 = getelementptr inbounds nuw i32, ptr %3, i64 %30
  store i32 %29, ptr %31, align 4, !tbaa !5
  %32 = icmp eq i64 %30, 5
  br i1 %32, label %17, label %24, !llvm.loop !44

33:                                               ; preds = %51, %17
  %34 = phi i64 [ 0, %17 ], [ %52, %51 ]
  %35 = getelementptr inbounds nuw [2 x i32], ptr @__const.main.edges, i64 %34
  %36 = load i32, ptr %35, align 8, !tbaa !5
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %38 = load i32, ptr %37, align 4, !tbaa !5
  %39 = icmp sgt i32 %36, -1
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = icmp samesign ult i32 %36, 5
  %42 = icmp ult i32 %38, 5
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = zext nneg i32 %36 to i64
  %46 = getelementptr inbounds nuw i32, ptr %23, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !5
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %46, align 4, !tbaa !5
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, ptr %22, i64 %49
  store i32 %38, ptr %50, align 4, !tbaa !5
  br label %51

51:                                               ; preds = %44, %40, %33
  %52 = add nuw nsw i64 %34, 1
  %53 = icmp eq i64 %52, 5
  br i1 %53, label %54, label %33, !llvm.loop !45

54:                                               ; preds = %51
  tail call void @free(ptr noundef %23) #11
  tail call void @free(ptr noundef %1) #11
  %55 = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #12
  tail call void @_Z25bfs_pull_with_cgra_kerneliPKiS0_iPi(i32 noundef 5, ptr noundef nonnull %3, ptr noundef %22, i32 noundef 0, ptr noundef %55)
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 0)
  br label %58

57:                                               ; preds = %58
  tail call void @free(ptr noundef nonnull %55) #11
  tail call void @free(ptr noundef %3) #11
  tail call void @free(ptr noundef %22) #11
  ret i32 0

58:                                               ; preds = %54, %58
  %59 = phi i64 [ 0, %54 ], [ %64, %58 ]
  %60 = getelementptr inbounds nuw i32, ptr %55, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !5
  %62 = trunc nuw nsw i64 %59 to i32
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %62, i32 noundef %61)
  %64 = add nuw nsw i64 %59, 1
  %65 = icmp eq i64 %64, 5
  br i1 %65, label %57, label %58, !llvm.loop !46
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !12, !13}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_Z21cgra_spmv_pull_kerneliPKiS0_PKhPt: argument 0"}
!18 = distinct !{!18, !"_Z21cgra_spmv_pull_kerneliPKiS0_PKhPt"}
!19 = !{!20, !21, !22}
!20 = distinct !{!20, !18, !"_Z21cgra_spmv_pull_kerneliPKiS0_PKhPt: argument 1"}
!21 = distinct !{!21, !18, !"_Z21cgra_spmv_pull_kerneliPKiS0_PKhPt: argument 2"}
!22 = distinct !{!22, !18, !"_Z21cgra_spmv_pull_kerneliPKiS0_PKhPt: argument 3"}
!23 = !{!20}
!24 = !{!21}
!25 = !{!22}
!26 = !{!17, !21, !22}
!27 = !{!17, !20, !22}
!28 = !{!17, !20, !21}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZL21bfs_postprocess_leveliPKtPhS1_Pii: argument 0"}
!31 = distinct !{!31, !"_ZL21bfs_postprocess_leveliPKtPhS1_Pii"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"_ZL21bfs_postprocess_leveliPKtPhS1_Pii: argument 1"}
!34 = !{!35}
!35 = distinct !{!35, !31, !"_ZL21bfs_postprocess_leveliPKtPhS1_Pii: argument 2"}
!36 = !{!37}
!37 = distinct !{!37, !31, !"_ZL21bfs_postprocess_leveliPKtPhS1_Pii: argument 3"}
!38 = !{!30, !35, !37}
!39 = !{!30, !33, !37}
!40 = !{!33, !35, !37}
!41 = distinct !{!41, !12, !13}
!42 = !{!30, !33, !35}
!43 = distinct !{!43, !12, !13}
!44 = distinct !{!44, !12, !13}
!45 = distinct !{!45, !12, !13}
!46 = distinct !{!46, !12, !13}
