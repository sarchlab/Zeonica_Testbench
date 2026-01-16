#loop_annotation = #llvm.loop_annotation<mustProgress = true>
#loop_unroll = #llvm.loop_unroll<disable = true>
#loop_vectorize = #llvm.loop_vectorize<width = 1 : i32>
#loop_annotation1 = #llvm.loop_annotation<vectorize = #loop_vectorize, unroll = #loop_unroll, mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, f128 = dense<128> : vector<2xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, "dlti.endianness" = "little", "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 20.1.7 (https://github.com/llvm/llvm-project.git 6146a88f60492b520a36f8f8f3231e15f3cc6082)"} {
  llvm.func @kernel(%arg0: f32 {llvm.noundef}, %arg1: !llvm.ptr {llvm.noundef}, %arg2: !llvm.ptr {llvm.noundef}, %arg3: !llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = [["uwtable", "2"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic"} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(8 : i32) : i32
    %4 = llvm.mlir.constant(1 : i64) : i64
    %5 = llvm.mlir.constant(2 : i32) : i32
    %6 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %6 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg1, %7 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg2, %8 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg3, %9 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %20 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %20, %13 {alignment = 4 : i64} : f32, !llvm.ptr
    %21 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %22 = llvm.getelementptr inbounds %21[%1] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %23 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %23, %15 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %2, %10 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %24 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %25 = llvm.icmp "slt" %24, %3 : i32
    llvm.cond_br %25, ^bb2, ^bb4
  ^bb2:  // pred: ^bb1
    %26 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %28 = llvm.mul %5, %27 overflow<nsw> : i32
    %29 = llvm.sext %28 : i32 to i64
    %30 = llvm.getelementptr inbounds %26[%29] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %31 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %31, %16 {alignment = 4 : i64} : f32, !llvm.ptr
    %32 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %32, %11 {alignment = 4 : i64} : f32, !llvm.ptr
    %33 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %34 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %35 = llvm.sext %34 : i32 to i64
    %36 = llvm.getelementptr inbounds %33[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %37 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %37, %12 {alignment = 4 : i64} : f32, !llvm.ptr
    %38 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %39 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %40 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %41 = llvm.sext %40 : i32 to i64
    %42 = llvm.getelementptr inbounds %39[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %38, %42 {alignment = 4 : i64} : f32, !llvm.ptr
    %43 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %44 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %45 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %46 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> f32
    %47 = llvm.fmul %45, %46 : f32
    %48 = llvm.fneg %47 : f32
    %49 = llvm.intr.fmuladd(%43, %44, %48) : (f32, f32, f32) -> f32
    llvm.store %49, %13 {alignment = 4 : i64} : f32, !llvm.ptr
    %50 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %51 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> f32
    %52 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %53 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %54 = llvm.fmul %52, %53 : f32
    %55 = llvm.intr.fmuladd(%50, %51, %54) : (f32, f32, f32) -> f32
    llvm.store %55, %14 {alignment = 4 : i64} : f32, !llvm.ptr
    %56 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %57 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %58 = llvm.mul %5, %57 overflow<nsw> : i32
    %59 = llvm.add %58, %0 overflow<nsw> : i32
    %60 = llvm.sext %59 : i32 to i64
    %61 = llvm.getelementptr inbounds %56[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %62, %15 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // pred: ^bb2
    %63 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %64 = llvm.add %63, %0 overflow<nsw> : i32
    llvm.store %64, %10 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation1}
  ^bb4:  // pred: ^bb1
    %65 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %66 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %67 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %68 = llvm.add %67, %0 overflow<nsw> : i32
    llvm.store %68, %10 {alignment = 4 : i64} : i32, !llvm.ptr
    %69 = llvm.sext %67 : i32 to i64
    %70 = llvm.getelementptr inbounds %66[%69] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %65, %70 {alignment = 4 : i64} : f32, !llvm.ptr
    %71 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %72 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %73 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %74 = llvm.sext %73 : i32 to i64
    %75 = llvm.getelementptr inbounds %72[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %71, %75 {alignment = 4 : i64} : f32, !llvm.ptr
    %76 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %77 = llvm.getelementptr inbounds %76[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %78 = llvm.load %77 {alignment = 4 : i64} : !llvm.ptr -> f32
    %79 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %80 = llvm.fmul %78, %79 : f32
    llvm.store %80, %19 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %0, %10 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb4, ^bb7
    %81 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %82 = llvm.icmp "slt" %81, %3 : i32
    llvm.cond_br %82, ^bb6, ^bb8
  ^bb6:  // pred: ^bb5
    %83 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %84 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %85 = llvm.add %84, %0 overflow<nsw> : i32
    %86 = llvm.sext %85 : i32 to i64
    %87 = llvm.getelementptr inbounds %83[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %88 = llvm.load %87 {alignment = 4 : i64} : !llvm.ptr -> f32
    %89 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %90 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %91 = llvm.sub %90, %0 overflow<nsw> : i32
    %92 = llvm.sext %91 : i32 to i64
    %93 = llvm.getelementptr inbounds %89[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %94 = llvm.load %93 {alignment = 4 : i64} : !llvm.ptr -> f32
    %95 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %96 = llvm.intr.fmuladd(%88, %94, %95) : (f32, f32, f32) -> f32
    llvm.store %96, %19 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %97 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %98 = llvm.add %97, %0 overflow<nsw> : i32
    llvm.store %98, %10 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb5
    %99 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %100 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %99, %100 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.return
  }
}
