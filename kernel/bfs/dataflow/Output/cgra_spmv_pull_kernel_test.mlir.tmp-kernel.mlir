#loop_unroll = #llvm.loop_unroll<disable = true>
#tbaa_root = #llvm.tbaa_root<id = "Simple C++ TBAA">
#loop_annotation = #llvm.loop_annotation<unroll = #loop_unroll, mustProgress = true>
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc, access_type = #tbaa_type_desc, offset = 0>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "int", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc2 = #llvm.tbaa_type_desc<id = "short", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag1 = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
#tbaa_tag2 = #llvm.tbaa_tag<base_type = #tbaa_type_desc2, access_type = #tbaa_type_desc2, offset = 0>
module attributes {dlti.dl_spec = #dlti.dl_spec<f16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, !llvm.ptr<270> = dense<32> : vector<4xi64>, f64 = dense<64> : vector<2xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i16 = dense<16> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, "dlti.endianness" = "little", "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 20.1.7 (https://github.com/llvm/llvm-project.git 6146a88f60492b520a36f8f8f3231e15f3cc6082)"} {
  llvm.func local_unnamed_addr @_Z21cgra_spmv_pull_kerneliPKiS0_PKhPt(%arg0: i32 {llvm.noundef}, %arg1: !llvm.ptr {llvm.noalias, llvm.nocapture, llvm.noundef, llvm.readonly}, %arg2: !llvm.ptr {llvm.noalias, llvm.nocapture, llvm.noundef, llvm.readonly}, %arg3: !llvm.ptr {llvm.noalias, llvm.nocapture, llvm.noundef, llvm.readonly}, %arg4: !llvm.ptr {llvm.noalias, llvm.nocapture, llvm.noundef, llvm.writeonly}) attributes {memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", ["uwtable", "2"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"} {
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
}
