module attributes {dlti.dl_spec = #dlti.dl_spec<i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, i64 = dense<64> : vector<2xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, f64 = dense<64> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, !llvm.ptr<270> = dense<32> : vector<4xi64>, f128 = dense<128> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, "dlti.endianness" = "little", "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 20.1.7 (https://github.com/llvm/llvm-project.git 6146a88f60492b520a36f8f8f3231e15f3cc6082)"} {
  func.func @kernel(%arg0: i32 {llvm.noundef}, %arg1: i32 {llvm.noundef}, %arg2: !llvm.ptr {llvm.nocapture, llvm.noundef, llvm.readonly}, %arg3: !llvm.ptr {llvm.nocapture, llvm.noundef}, %arg4: !llvm.ptr {llvm.nocapture, llvm.noundef}, %arg5: !llvm.ptr {llvm.nocapture, llvm.noundef, llvm.readonly}, %arg6: !llvm.ptr {llvm.nocapture, llvm.noundef, llvm.readonly}) -> !llvm.void attributes {CConv = #llvm.cconv<ccc>, accelerator = "neura", linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none>, no_unwind, passthrough = ["nofree", "norecurse", "nosync", ["uwtable", "2"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", unnamed_addr = 1 : i64, visibility_ = 0 : i64} {
    %0 = "neura.constant"() <{value = "%arg0"}> : () -> i32
    %1 = "neura.constant"() <{value = "%arg1"}> : () -> i32
    %2 = "neura.constant"() <{value = "%arg3"}> : () -> !llvm.ptr
    %3 = "neura.constant"() <{value = "%arg4"}> : () -> !llvm.ptr
    %4 = "neura.constant"() <{value = 0 : i8}> : () -> i8
    %5 = "neura.constant"() <{value = 0 : i64}> : () -> i64
    %6 = "neura.icmp"(%0) <{cmpType = "sgt"}> {rhs_value = 0 : i32} : (i32) -> i1
    neura.cond_br %6 : i1 then %0, %2, %4, %1, %5 : i32, !llvm.ptr, i8, i32, i64 to ^bb1 else %1, %3, %4 : i32, !llvm.ptr, i8 to ^bb2
  ^bb1(%7: i32, %8: !llvm.ptr, %9: i8, %10: i32, %11: i64):  // pred: ^bb0
    %12 = neura.zext %7 : i32 -> i64
    %13 = "neura.shl"(%12) {rhs_value = 3 : i64} : (i64) -> i64
    "neura.memset"(%8, %9, %13) <{is_volatile = false}> : (!llvm.ptr, i8, i64) -> ()
    %14 = "neura.icmp"(%10) <{cmpType = "sgt"}> {rhs_value = 0 : i32} : (i32) -> i1
    neura.cond_br %14 : i1 then %10, %7, %11 : i32, i32, i64 to ^bb4 else to ^bb8
  ^bb2(%15: i32, %16: !llvm.ptr, %17: i8):  // pred: ^bb0
    %18 = "neura.icmp"(%15) <{cmpType = "sgt"}> {rhs_value = 0 : i32} : (i32) -> i1
    neura.cond_br %18 : i1 then %15, %16, %17 : i32, !llvm.ptr, i8 to ^bb3 else to ^bb8
  ^bb3(%19: i32, %20: !llvm.ptr, %21: i8):  // pred: ^bb2
    %22 = neura.zext %19 : i32 -> i64
    %23 = "neura.shl"(%22) {rhs_value = 3 : i64} : (i64) -> i64
    "neura.memset"(%20, %21, %23) <{is_volatile = false}> : (!llvm.ptr, i8, i64) -> ()
    neura.br to ^bb8
  ^bb4(%24: i32, %25: i32, %26: i64):  // pred: ^bb1
    %27 = neura.zext %24 : i32 -> i64
    %28 = neura.zext %25 : i32 -> i64
    neura.br %26, %26, %27 : i64, i64, i64 to ^bb5
  ^bb5(%29: i64, %30: i64, %31: i64):  // 2 preds: ^bb4, ^bb7
    %32 = "neura.gep"(%29) <{operandSegmentSizes = array<i32: 0, 1>}> {lhs_value = "%arg4"} : (i64) -> !llvm.ptr
    "neura.store"(%32) {lhs_value = 0.000000e+00 : f64} : (!llvm.ptr) -> ()
    %33 = "neura.gep"(%29) <{operandSegmentSizes = array<i32: 0, 1>}> {lhs_value = "%arg6"} : (i64) -> !llvm.ptr
    neura.br %30, %29, %31, %30 : i64, i64, i64, i64 to ^bb6
  ^bb6(%34: i64, %35: i64, %36: i64, %37: i64):  // 2 preds: ^bb5, ^bb6
    %38 = "neura.gep"(%34) <{operandSegmentSizes = array<i32: 0, 1>}> {lhs_value = "%arg3"} : (i64) -> !llvm.ptr
    %39 = "neura.load"(%38) : (!llvm.ptr) -> f64
    %40 = "neura.load"(%33) : (!llvm.ptr) -> f64
    %41 = "neura.gep"(%35, %34) <{operandSegmentSizes = array<i32: 0, 2>}> {lhs_value = "%arg2"} : (i64, i64) -> !llvm.ptr
    %42 = "neura.load"(%41) : (!llvm.ptr) -> f64
    %43 = "neura.fmul_fadd"(%40, %42, %39) : (f64, f64, f64) -> f64
    "neura.store"(%43, %38) : (f64, !llvm.ptr) -> ()
    %44 = "neura.load"(%32) : (!llvm.ptr) -> f64
    %45 = "neura.load"(%41) : (!llvm.ptr) -> f64
    %46 = "neura.gep"(%34) <{operandSegmentSizes = array<i32: 0, 1>}> {lhs_value = "%arg5"} : (i64) -> !llvm.ptr
    %47 = "neura.load"(%46) : (!llvm.ptr) -> f64
    %48 = "neura.fmul_fadd"(%45, %47, %44) : (f64, f64, f64) -> f64
    "neura.store"(%48, %32) : (f64, !llvm.ptr) -> ()
    %49 = "neura.add"(%34) {rhs_value = 1 : i64} : (i64) -> i64
    %50 = "neura.icmp"(%49, %28) <{cmpType = "eq"}> : (i64, i64) -> i1
    neura.cond_br %50 : i1 then %35, %36, %37 : i64, i64, i64 to ^bb7 else %49, %35, %36, %37 : i64, i64, i64, i64 to ^bb6
  ^bb7(%51: i64, %52: i64, %53: i64):  // pred: ^bb6
    %54 = "neura.add"(%51) {rhs_value = 1 : i64} : (i64) -> i64
    %55 = "neura.icmp"(%54, %52) <{cmpType = "eq"}> : (i64, i64) -> i1
    neura.cond_br %55 : i1 then to ^bb8 else %54, %53, %52 : i64, i64, i64 to ^bb5
  ^bb8:  // 4 preds: ^bb1, ^bb2, ^bb3, ^bb7
    "neura.return"() : () -> ()
  }
}

