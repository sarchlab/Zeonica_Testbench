#alias_scope_domain = #llvm.alias_scope_domain<id = distinct[0]<>, description = "_ZL21bfs_postprocess_leveliPKtPhS1_Pii">
#loop_unroll = #llvm.loop_unroll<disable = true>
#tbaa_root = #llvm.tbaa_root<id = "Simple C++ TBAA">
#alias_scope = #llvm.alias_scope<id = distinct[1]<>, domain = #alias_scope_domain, description = "_ZL21bfs_postprocess_leveliPKtPhS1_Pii: argument 0">
#alias_scope1 = #llvm.alias_scope<id = distinct[2]<>, domain = #alias_scope_domain, description = "_ZL21bfs_postprocess_leveliPKtPhS1_Pii: argument 1">
#alias_scope2 = #llvm.alias_scope<id = distinct[3]<>, domain = #alias_scope_domain, description = "_ZL21bfs_postprocess_leveliPKtPhS1_Pii: argument 2">
#alias_scope3 = #llvm.alias_scope<id = distinct[4]<>, domain = #alias_scope_domain, description = "_ZL21bfs_postprocess_leveliPKtPhS1_Pii: argument 3">
#loop_annotation = #llvm.loop_annotation<unroll = #loop_unroll, mustProgress = true>
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc, access_type = #tbaa_type_desc, offset = 0>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "int", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc2 = #llvm.tbaa_type_desc<id = "short", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag1 = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
#tbaa_tag2 = #llvm.tbaa_tag<base_type = #tbaa_type_desc2, access_type = #tbaa_type_desc2, offset = 0>
module attributes {dlti.dl_spec = #dlti.dl_spec<i1 = dense<8> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, f80 = dense<128> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, !llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, f128 = dense<128> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, "dlti.stack_alignment" = 128 : i64, "dlti.endianness" = "little">, llvm.ident = "clang version 20.1.7 (https://github.com/llvm/llvm-project.git 6146a88f60492b520a36f8f8f3231e15f3cc6082)"} {
  llvm.func local_unnamed_addr @_Z10bfs_kerneliPKiS0_PKhPt(%arg0: i32 {llvm.noundef}, %arg1: !llvm.ptr {llvm.noalias, llvm.nocapture, llvm.noundef, llvm.readonly}, %arg2: !llvm.ptr {llvm.noalias, llvm.nocapture, llvm.noundef, llvm.readonly}, %arg3: !llvm.ptr {llvm.noalias, llvm.nocapture, llvm.noundef, llvm.readonly}, %arg4: !llvm.ptr {llvm.noalias, llvm.nocapture, llvm.noundef, llvm.writeonly}) attributes {memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", ["uwtable", "2"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"} {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(0 : i64) : i64
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.mlir.constant(0 : i16) : i16
    %4 = llvm.icmp "sgt" %arg0, %0 : i32
    llvm.cond_br %4, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %5 = llvm.zext nneg %arg0 : i32 to i64
    %6 = llvm.load %arg1 {alignment = 4 : i64, tbaa = [#tbaa_tag1]} : !llvm.ptr -> i32
    llvm.br ^bb3(%6, %1 : i32, i64)
  ^bb2:  // 2 preds: ^bb0, ^bb5
    llvm.return
  ^bb3(%7: i32, %8: i64):  // 2 preds: ^bb1, ^bb5
    %9 = llvm.add %8, %2 overflow<nsw, nuw> : i64
    %10 = llvm.getelementptr inbounds %arg1[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %11 = llvm.load %10 {alignment = 4 : i64, tbaa = [#tbaa_tag1]} : !llvm.ptr -> i32
    %12 = llvm.icmp "slt" %7, %11 : i32
    llvm.cond_br %12, ^bb4, ^bb5(%3 : i16)
  ^bb4:  // pred: ^bb3
    %13 = llvm.sext %7 : i32 to i64
    %14 = llvm.sext %11 : i32 to i64
    llvm.br ^bb6(%13, %3 : i64, i16)
  ^bb5(%15: i16):  // 2 preds: ^bb3, ^bb6
    %16 = llvm.getelementptr inbounds %arg4[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i16
    llvm.store %15, %16 {alignment = 2 : i64, tbaa = [#tbaa_tag2]} : i16, !llvm.ptr
    %17 = llvm.icmp "eq" %9, %5 : i64
    llvm.cond_br %17, ^bb2, ^bb3(%11, %9 : i32, i64) {loop_annotation = #loop_annotation}
  ^bb6(%18: i64, %19: i16):  // 2 preds: ^bb4, ^bb6
    %20 = llvm.getelementptr inbounds %arg2[%18] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %21 = llvm.load %20 {alignment = 4 : i64, tbaa = [#tbaa_tag1]} : !llvm.ptr -> i32
    %22 = llvm.sext %21 : i32 to i64
    %23 = llvm.getelementptr inbounds %arg3[%22] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %24 = llvm.load %23 {alignment = 1 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> i8
    %25 = llvm.zext %24 : i8 to i16
    %26 = llvm.add %19, %25 : i16
    %27 = llvm.add %18, %2 overflow<nsw> : i64
    %28 = llvm.icmp "eq" %27, %14 : i64
    llvm.cond_br %28, ^bb5(%26 : i16), ^bb6(%27, %26 : i64, i16) {loop_annotation = #loop_annotation}
  }
  llvm.func local_unnamed_addr @calloc(i64 {llvm.noundef}, i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias, llvm.noundef}) attributes {memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = readwrite>, no_unwind, passthrough = ["mustprogress", "nofree", ["allockind", "17"], ["allocsize", "1"], ["alloc-family", "malloc"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", will_return}
  llvm.func local_unnamed_addr @free(!llvm.ptr {llvm.allocptr, llvm.nocapture, llvm.noundef}) attributes {memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = readwrite>, no_unwind, passthrough = ["mustprogress", ["allockind", "4"], ["alloc-family", "malloc"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", will_return}
  llvm.func local_unnamed_addr @_Z25bfs_pull_with_cgra_kerneliPKiS0_iPi(%arg0: i32 {llvm.noundef}, %arg1: !llvm.ptr {llvm.noalias, llvm.noundef}, %arg2: !llvm.ptr {llvm.noalias, llvm.noundef}, %arg3: i32 {llvm.noundef}, %arg4: !llvm.ptr {llvm.noalias, llvm.nocapture, llvm.noundef, llvm.writeonly}) attributes {passthrough = ["mustprogress", ["uwtable", "2"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"} {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.mlir.constant(2 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(1 : i8) : i8
    %4 = llvm.mlir.constant(-1 : i8) : i8
    %5 = llvm.mlir.constant(1 : i32) : i32
    %6 = llvm.mlir.constant(0 : i64) : i64
    %7 = llvm.mlir.constant(true) : i1
    %8 = llvm.mlir.constant(0 : i8) : i8
    %9 = llvm.mlir.constant(0 : i16) : i16
    %10 = llvm.mlir.constant(false) : i1
    %11 = llvm.sext %arg0 : i32 to i64
    %12 = llvm.call tail @calloc(%11, %0) {memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = readwrite>, no_unwind, will_return} : (i64, i64) -> !llvm.ptr
    %13 = llvm.call tail @calloc(%11, %0) {memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = readwrite>, no_unwind, will_return} : (i64, i64) -> !llvm.ptr
    %14 = llvm.call tail @calloc(%11, %0) {memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = readwrite>, no_unwind, will_return} : (i64, i64) -> !llvm.ptr
    %15 = llvm.call tail @calloc(%11, %1) {memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = readwrite>, no_unwind, will_return} : (i64, i64) -> !llvm.ptr
    %16 = llvm.icmp "sgt" %arg0, %2 : i32
    llvm.cond_br %16, ^bb1, ^bb11
  ^bb1:  // pred: ^bb0
    %17 = llvm.zext nneg %arg0 : i32 to i64
    %18 = llvm.shl %17, %1 overflow<nsw, nuw> : i64
    "llvm.intr.memset"(%arg4, %4, %18) <{isVolatile = false, tbaa = [#tbaa_tag1]}> : (!llvm.ptr, i8, i64) -> ()
    %19 = llvm.sext %arg3 : i32 to i64
    %20 = llvm.getelementptr inbounds %13[%19] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %3, %20 {alignment = 1 : i64, tbaa = [#tbaa_tag]} : i8, !llvm.ptr
    %21 = llvm.getelementptr inbounds %12[%19] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %3, %21 {alignment = 1 : i64, tbaa = [#tbaa_tag]} : i8, !llvm.ptr
    %22 = llvm.getelementptr inbounds %arg4[%19] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %2, %22 {alignment = 4 : i64, tbaa = [#tbaa_tag1]} : i32, !llvm.ptr
    llvm.call tail @_Z21cgra_spmv_pull_kerneliPKiS0_PKhPt(%arg0, %arg1, %arg2, %13, %15) : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %23 = llvm.zext nneg %arg0 : i32 to i64
    llvm.br ^bb2(%2 : i32)
  ^bb2(%24: i32):  // 2 preds: ^bb1, ^bb10
    llvm.intr.experimental.noalias.scope.decl #alias_scope
    llvm.intr.experimental.noalias.scope.decl #alias_scope1
    llvm.intr.experimental.noalias.scope.decl #alias_scope2
    llvm.intr.experimental.noalias.scope.decl #alias_scope3
    %25 = llvm.add %24, %5 overflow<nsw, nuw> : i32
    llvm.br ^bb3(%6, %7 : i64, i1)
  ^bb3(%26: i64, %27: i1):  // 2 preds: ^bb2, ^bb8
    llvm.br ^bb4(%26 : i64)
  ^bb4(%28: i64):  // 2 preds: ^bb3, ^bb7
    %29 = llvm.getelementptr inbounds %12[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %30 = llvm.load %29 {alias_scopes = [#alias_scope1], alignment = 1 : i64, noalias_scopes = [#alias_scope, #alias_scope2, #alias_scope3], tbaa = [#tbaa_tag]} : !llvm.ptr -> i8
    %31 = llvm.icmp "eq" %30, %8 : i8
    llvm.cond_br %31, ^bb6, ^bb5
  ^bb5:  // pred: ^bb4
    %32 = llvm.getelementptr inbounds %14[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %8, %32 {alias_scopes = [#alias_scope2], alignment = 1 : i64, noalias_scopes = [#alias_scope, #alias_scope1, #alias_scope3], tbaa = [#tbaa_tag]} : i8, !llvm.ptr
    llvm.br ^bb7
  ^bb6:  // pred: ^bb4
    %33 = llvm.getelementptr inbounds %15[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i16
    %34 = llvm.load %33 {alias_scopes = [#alias_scope], alignment = 2 : i64, noalias_scopes = [#alias_scope1, #alias_scope2, #alias_scope3], tbaa = [#tbaa_tag2]} : !llvm.ptr -> i16
    %35 = llvm.icmp "ne" %34, %9 : i16
    %36 = llvm.zext %35 : i1 to i8
    %37 = llvm.getelementptr inbounds %14[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %36, %37 {alias_scopes = [#alias_scope2], alignment = 1 : i64, noalias_scopes = [#alias_scope, #alias_scope1, #alias_scope3], tbaa = [#tbaa_tag]} : i8, !llvm.ptr
    llvm.cond_br %35, ^bb8, ^bb7
  ^bb7:  // 2 preds: ^bb5, ^bb6
    %38 = llvm.add %28, %0 overflow<nsw, nuw> : i64
    %39 = llvm.icmp "eq" %38, %23 : i64
    llvm.cond_br %39, ^bb9, ^bb4(%38 : i64) {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb6
    %40 = llvm.getelementptr inbounds %12[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %3, %40 {alias_scopes = [#alias_scope1], alignment = 1 : i64, noalias_scopes = [#alias_scope, #alias_scope2, #alias_scope3], tbaa = [#tbaa_tag]} : i8, !llvm.ptr
    %41 = llvm.getelementptr inbounds %arg4[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %25, %41 {alias_scopes = [#alias_scope3], alignment = 4 : i64, noalias_scopes = [#alias_scope, #alias_scope1, #alias_scope2], tbaa = [#tbaa_tag1]} : i32, !llvm.ptr
    %42 = llvm.add %28, %0 overflow<nsw, nuw> : i64
    %43 = llvm.icmp "eq" %42, %23 : i64
    llvm.cond_br %43, ^bb10, ^bb3(%42, %10 : i64, i1) {loop_annotation = #loop_annotation}
  ^bb9:  // pred: ^bb7
    llvm.cond_br %27, ^bb12, ^bb10
  ^bb10:  // 2 preds: ^bb8, ^bb9
    "llvm.intr.memcpy"(%13, %14, %11) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memset"(%14, %8, %11) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    llvm.call tail @_Z21cgra_spmv_pull_kerneliPKiS0_PKhPt(%arg0, %arg1, %arg2, %13, %15) : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.br ^bb2(%25 : i32)
  ^bb11:  // pred: ^bb0
    %44 = llvm.sext %arg3 : i32 to i64
    %45 = llvm.getelementptr inbounds %13[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %3, %45 {alignment = 1 : i64, tbaa = [#tbaa_tag]} : i8, !llvm.ptr
    %46 = llvm.getelementptr inbounds %12[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %3, %46 {alignment = 1 : i64, tbaa = [#tbaa_tag]} : i8, !llvm.ptr
    %47 = llvm.getelementptr inbounds %arg4[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %2, %47 {alignment = 4 : i64, tbaa = [#tbaa_tag1]} : i32, !llvm.ptr
    llvm.call tail @_Z21cgra_spmv_pull_kerneliPKiS0_PKhPt(%arg0, %arg1, %arg2, %13, %15) : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.br ^bb12
  ^bb12:  // 2 preds: ^bb9, ^bb11
    llvm.call tail @free(%12) {memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = readwrite>, no_unwind, will_return} : (!llvm.ptr) -> ()
    llvm.call tail @free(%13) {memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = readwrite>, no_unwind, will_return} : (!llvm.ptr) -> ()
    llvm.call tail @free(%14) {memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = readwrite>, no_unwind, will_return} : (!llvm.ptr) -> ()
    llvm.call tail @free(%15) {memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = readwrite>, no_unwind, will_return} : (!llvm.ptr) -> ()
    llvm.return
  }
  llvm.func local_unnamed_addr @_Z21cgra_spmv_pull_kerneliPKiS0_PKhPt(i32 {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) attributes {passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"}
}
