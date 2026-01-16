#alias_scope_domain = #llvm.alias_scope_domain<id = distinct[0]<>, description = "LVerDomain">
#loop_unroll = #llvm.loop_unroll<count = 1 : i32>
#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#alias_scope = #llvm.alias_scope<id = distinct[1]<>, domain = #alias_scope_domain>
#alias_scope1 = #llvm.alias_scope<id = distinct[2]<>, domain = #alias_scope_domain>
#alias_scope2 = #llvm.alias_scope<id = distinct[3]<>, domain = #alias_scope_domain>
#alias_scope3 = #llvm.alias_scope<id = distinct[4]<>, domain = #alias_scope_domain>
#alias_scope4 = #llvm.alias_scope<id = distinct[5]<>, domain = #alias_scope_domain>
#alias_scope5 = #llvm.alias_scope<id = distinct[6]<>, domain = #alias_scope_domain>
#loop_annotation = #llvm.loop_annotation<unroll = #loop_unroll, mustProgress = true>
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "double", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
module attributes {dlti.dl_spec = #dlti.dl_spec<i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, f80 = dense<128> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, !llvm.ptr<270> = dense<32> : vector<4xi64>, f128 = dense<128> : vector<2xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, f64 = dense<64> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, "dlti.stack_alignment" = 128 : i64, "dlti.endianness" = "little">, llvm.ident = "clang version 20.1.7 (https://github.com/llvm/llvm-project.git 6146a88f60492b520a36f8f8f3231e15f3cc6082)"} {
  llvm.func hidden unnamed_addr fastcc @kernel_mvt(%arg0: !llvm.ptr {llvm.nocapture, llvm.noundef}, %arg1: !llvm.ptr {llvm.nocapture, llvm.noundef}, %arg2: !llvm.ptr {llvm.nocapture, llvm.noundef, llvm.readonly}, %arg3: !llvm.ptr {llvm.nocapture, llvm.noundef, llvm.readonly}, %arg4: !llvm.ptr {llvm.nocapture, llvm.noundef, llvm.readonly}) attributes {memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none>, no_inline, no_unwind, passthrough = ["nofree", "norecurse", "nosync", ["uwtable", "2"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"} {
    %0 = llvm.mlir.constant(16000 : i64) : i64
    %1 = llvm.mlir.constant(32000000 : i64) : i64
    %2 = llvm.mlir.poison : !llvm.vec<4 x ptr>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.mlir.constant(1 : i64) : i64
    %5 = llvm.mlir.constant(2 : i64) : i64
    %6 = llvm.mlir.constant(3 : i64) : i64
    %7 = llvm.mlir.constant(dense<[16000, 32000000, 16000, 16000]> : vector<4xi64>) : vector<4xi64>
    %8 = llvm.mlir.constant(0 : i4) : i4
    %9 = llvm.mlir.poison : vector<4xf64>
    %10 = llvm.mlir.constant(4 : i64) : i64
    %11 = llvm.mlir.constant(2000 : i64) : i64
    %12 = llvm.getelementptr %arg0[%0] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %13 = llvm.getelementptr %arg1[%0] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %14 = llvm.getelementptr %arg4[%1] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %15 = llvm.getelementptr %arg2[%0] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %16 = llvm.insertelement %arg1, %2[%3 : i64] : !llvm.vec<4 x ptr>
    %17 = llvm.insertelement %arg4, %16[%4 : i64] : !llvm.vec<4 x ptr>
    %18 = llvm.insertelement %arg2, %17[%5 : i64] : !llvm.vec<4 x ptr>
    %19 = llvm.insertelement %arg3, %18[%6 : i64] : !llvm.vec<4 x ptr>
    %20 = llvm.getelementptr %19[%7] : (!llvm.vec<4 x ptr>, vector<4xi64>) -> !llvm.vec<4 x ptr>, i8
    %21 = llvm.getelementptr %arg3[%0] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %22 = llvm.insertelement %arg0, %2[%3 : i64] : !llvm.vec<4 x ptr>
    %23 = llvm.shufflevector %22, %2 [0, 0, 0, 0] : !llvm.vec<4 x ptr> 
    %24 = llvm.insertelement %12, %2[%3 : i64] : !llvm.vec<4 x ptr>
    %25 = llvm.shufflevector %24, %2 [0, 0, 0, 0] : !llvm.vec<4 x ptr> 
    %26 = llvm.icmp "ult" %23, %20 : !llvm.vec<4 x ptr>
    %27 = llvm.icmp "ult" %19, %25 : !llvm.vec<4 x ptr>
    %28 = llvm.and %26, %27 : vector<4xi1>
    %29 = llvm.icmp "ult" %arg1, %14 : !llvm.ptr
    %30 = llvm.icmp "ult" %arg4, %13 : !llvm.ptr
    %31 = llvm.and %29, %30 : i1
    %32 = llvm.icmp "ult" %arg1, %15 : !llvm.ptr
    %33 = llvm.icmp "ult" %arg2, %13 : !llvm.ptr
    %34 = llvm.and %32, %33 : i1
    %35 = llvm.icmp "ult" %arg1, %21 : !llvm.ptr
    %36 = llvm.icmp "ult" %arg3, %13 : !llvm.ptr
    %37 = llvm.and %35, %36 : i1
    %38 = llvm.bitcast %28 : vector<4xi1> to i4
    %39 = llvm.icmp "ne" %38, %8 : i4
    %40 = llvm.or %39, %31 : i1
    %41 = llvm.or %34, %37 : i1
    %42 = llvm.or %40, %41 : i1
    llvm.br ^bb1(%3 : i64)
  ^bb1(%43: i64):  // 2 preds: ^bb0, ^bb5
    %44 = llvm.getelementptr inbounds %arg2[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %45 = llvm.getelementptr inbounds %arg3[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.cond_br %42, ^bb4(%3 : i64), ^bb2
  ^bb2:  // pred: ^bb1
    %46 = llvm.load %44 {alias_scopes = [#alias_scope], alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> f64
    %47 = llvm.insertelement %46, %9[%3 : i64] : vector<4xf64>
    %48 = llvm.shufflevector %47, %9 [0, 0, 0, 0] : vector<4xf64> 
    %49 = llvm.load %45 {alias_scopes = [#alias_scope1], alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> f64
    %50 = llvm.insertelement %49, %9[%3 : i64] : vector<4xf64>
    %51 = llvm.shufflevector %50, %9 [0, 0, 0, 0] : vector<4xf64> 
    llvm.br ^bb3(%3 : i64)
  ^bb3(%52: i64):  // 2 preds: ^bb2, ^bb3
    %53 = llvm.or disjoint %52, %4 : i64
    %54 = llvm.or disjoint %52, %5 : i64
    %55 = llvm.or disjoint %52, %6 : i64
    %56 = llvm.getelementptr inbounds %arg0[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %57 = llvm.load %56 {alias_scopes = [#alias_scope2], alignment = 8 : i64, noalias_scopes = [#alias_scope3, #alias_scope4, #alias_scope5, #alias_scope, #alias_scope1], tbaa = [#tbaa_tag]} : !llvm.ptr -> vector<4xf64>
    %58 = llvm.getelementptr inbounds %arg4[%52, %43] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2000 x f64>
    %59 = llvm.getelementptr inbounds %arg4[%53, %43] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2000 x f64>
    %60 = llvm.getelementptr inbounds %arg4[%54, %43] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2000 x f64>
    %61 = llvm.getelementptr inbounds %arg4[%55, %43] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2000 x f64>
    %62 = llvm.load %58 {alias_scopes = [#alias_scope5], alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> f64
    %63 = llvm.load %59 {alias_scopes = [#alias_scope5], alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> f64
    %64 = llvm.load %60 {alias_scopes = [#alias_scope5], alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> f64
    %65 = llvm.load %61 {alias_scopes = [#alias_scope5], alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> f64
    %66 = llvm.insertelement %62, %9[%3 : i64] : vector<4xf64>
    %67 = llvm.insertelement %63, %66[%4 : i64] : vector<4xf64>
    %68 = llvm.insertelement %64, %67[%5 : i64] : vector<4xf64>
    %69 = llvm.insertelement %65, %68[%6 : i64] : vector<4xf64>
    %70 = llvm.intr.fmuladd(%69, %48, %57) : (vector<4xf64>, vector<4xf64>, vector<4xf64>) -> vector<4xf64>
    llvm.store %70, %56 {alias_scopes = [#alias_scope2], alignment = 8 : i64, noalias_scopes = [#alias_scope3, #alias_scope4, #alias_scope5, #alias_scope, #alias_scope1], tbaa = [#tbaa_tag]} : vector<4xf64>, !llvm.ptr
    %71 = llvm.getelementptr inbounds %arg1[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %72 = llvm.load %71 {alias_scopes = [#alias_scope3], alignment = 8 : i64, noalias_scopes = [#alias_scope4, #alias_scope5, #alias_scope, #alias_scope1], tbaa = [#tbaa_tag]} : !llvm.ptr -> vector<4xf64>
    %73 = llvm.getelementptr inbounds %arg4[%43, %52] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2000 x f64>
    %74 = llvm.load %73 {alias_scopes = [#alias_scope4], alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> vector<4xf64>
    %75 = llvm.intr.fmuladd(%74, %51, %72) : (vector<4xf64>, vector<4xf64>, vector<4xf64>) -> vector<4xf64>
    llvm.store %75, %71 {alias_scopes = [#alias_scope3], alignment = 8 : i64, noalias_scopes = [#alias_scope4, #alias_scope5, #alias_scope, #alias_scope1], tbaa = [#tbaa_tag]} : vector<4xf64>, !llvm.ptr
    %76 = llvm.add %52, %10 overflow<nuw> : i64
    %77 = llvm.icmp "eq" %76, %11 : i64
    llvm.cond_br %77, ^bb5, ^bb3(%76 : i64)
  ^bb4(%78: i64):  // 2 preds: ^bb1, ^bb4
    %79 = llvm.getelementptr inbounds %arg0[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %80 = llvm.load %79 {alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> f64
    %81 = llvm.getelementptr inbounds %arg4[%78, %43] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2000 x f64>
    %82 = llvm.load %81 {alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> f64
    %83 = llvm.load %44 {alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> f64
    %84 = llvm.intr.fmuladd(%82, %83, %80) : (f64, f64, f64) -> f64
    llvm.store %84, %79 {alignment = 8 : i64, tbaa = [#tbaa_tag]} : f64, !llvm.ptr
    %85 = llvm.getelementptr inbounds %arg1[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %86 = llvm.load %85 {alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> f64
    %87 = llvm.getelementptr inbounds %arg4[%43, %78] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2000 x f64>
    %88 = llvm.load %87 {alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> f64
    %89 = llvm.load %45 {alignment = 8 : i64, tbaa = [#tbaa_tag]} : !llvm.ptr -> f64
    %90 = llvm.intr.fmuladd(%88, %89, %86) : (f64, f64, f64) -> f64
    llvm.store %90, %85 {alignment = 8 : i64, tbaa = [#tbaa_tag]} : f64, !llvm.ptr
    %91 = llvm.add %78, %4 overflow<nsw, nuw> : i64
    %92 = llvm.icmp "eq" %91, %11 : i64
    llvm.cond_br %92, ^bb5, ^bb4(%91 : i64)
  ^bb5:  // 2 preds: ^bb3, ^bb4
    %93 = llvm.add %43, %4 overflow<nsw, nuw> : i64
    %94 = llvm.icmp "eq" %93, %11 : i64
    llvm.cond_br %94, ^bb6, ^bb1(%93 : i64) {loop_annotation = #loop_annotation}
  ^bb6:  // pred: ^bb5
    llvm.return
  }
}
