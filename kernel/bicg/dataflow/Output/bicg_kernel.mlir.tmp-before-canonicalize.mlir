module attributes {dlti.dl_spec = #dlti.dl_spec<i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, i64 = dense<64> : vector<2xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, f64 = dense<64> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, !llvm.ptr<270> = dense<32> : vector<4xi64>, f128 = dense<128> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, "dlti.endianness" = "little", "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 20.1.7 (https://github.com/llvm/llvm-project.git 6146a88f60492b520a36f8f8f3231e15f3cc6082)"} {
  func.func @kernel(%arg0: i32 {llvm.noundef}, %arg1: i32 {llvm.noundef}, %arg2: !llvm.ptr {llvm.nocapture, llvm.noundef, llvm.readonly}, %arg3: !llvm.ptr {llvm.nocapture, llvm.noundef}, %arg4: !llvm.ptr {llvm.nocapture, llvm.noundef}, %arg5: !llvm.ptr {llvm.nocapture, llvm.noundef, llvm.readonly}, %arg6: !llvm.ptr {llvm.nocapture, llvm.noundef, llvm.readonly}) -> !llvm.void attributes {CConv = #llvm.cconv<ccc>, accelerator = "neura", linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none>, no_unwind, passthrough = ["nofree", "norecurse", "nosync", ["uwtable", "2"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"]], target_cpu = "x86-64", target_features = #llvm.target_features<["+cmov", "+cx8", "+fxsr", "+mmx", "+sse", "+sse2", "+x87"]>, tune_cpu = "generic", unnamed_addr = 1 : i64, visibility_ = 0 : i64} {
    %0 = "neura.constant"() <{value = "%arg0"}> : () -> i32
    %1 = "neura.constant"() <{value = "%arg1"}> : () -> i32
    %2 = "neura.constant"() <{value = "%arg3"}> : () -> !llvm.ptr
    %3 = "neura.constant"() <{value = "%arg4"}> : () -> !llvm.ptr
    %4 = "neura.constant"() <{value = 0 : i8}> : () -> i8
    %5 = "neura.constant"() <{value = 0 : i64}> : () -> i64
    %6 = "neura.icmp"(%0) <{cmpType = "sgt"}> {rhs_value = 0 : i32} : (i32) -> i1
    neura.cond_br %6 : i1 then to ^bb1 else to ^bb2
  ^bb1:  // pred: ^bb0
    %7 = neura.zext %0 : i32 -> i64
    %8 = "neura.shl"(%7) {rhs_value = 3 : i64} : (i64) -> i64
    "neura.memset"(%2, %4, %8) <{is_volatile = false}> : (!llvm.ptr, i8, i64) -> ()
    %9 = "neura.icmp"(%1) <{cmpType = "sgt"}> {rhs_value = 0 : i32} : (i32) -> i1
    neura.cond_br %9 : i1 then to ^bb4 else to ^bb8
  ^bb2:  // pred: ^bb0
    %10 = "neura.icmp"(%1) <{cmpType = "sgt"}> {rhs_value = 0 : i32} : (i32) -> i1
    neura.cond_br %10 : i1 then to ^bb3 else to ^bb8
  ^bb3:  // pred: ^bb2
    %11 = neura.zext %1 : i32 -> i64
    %12 = "neura.shl"(%11) {rhs_value = 3 : i64} : (i64) -> i64
    "neura.memset"(%3, %4, %12) <{is_volatile = false}> : (!llvm.ptr, i8, i64) -> ()
    neura.br to ^bb8
  ^bb4:  // pred: ^bb1
    %13 = neura.zext %1 : i32 -> i64
    %14 = neura.zext %0 : i32 -> i64
    neura.br %5 : i64 to ^bb5
  ^bb5(%15: i64):  // 2 preds: ^bb4, ^bb7
    %16 = "neura.gep"(%15) <{operandSegmentSizes = array<i32: 0, 1>}> {lhs_value = "%arg4"} : (i64) -> !llvm.ptr
    "neura.store"(%16) {lhs_value = 0.000000e+00 : f64} : (!llvm.ptr) -> ()
    %17 = "neura.gep"(%15) <{operandSegmentSizes = array<i32: 0, 1>}> {lhs_value = "%arg6"} : (i64) -> !llvm.ptr
    neura.br %5 : i64 to ^bb6
  ^bb6(%18: i64):  // 2 preds: ^bb5, ^bb6
    %19 = "neura.gep"(%18) <{operandSegmentSizes = array<i32: 0, 1>}> {lhs_value = "%arg3"} : (i64) -> !llvm.ptr
    %20 = "neura.load"(%19) : (!llvm.ptr) -> f64
    %21 = "neura.load"(%17) : (!llvm.ptr) -> f64
    %22 = "neura.gep"(%15, %18) <{operandSegmentSizes = array<i32: 0, 2>}> {lhs_value = "%arg2"} : (i64, i64) -> !llvm.ptr
    %23 = "neura.load"(%22) : (!llvm.ptr) -> f64
    %24 = "neura.fmul_fadd"(%21, %23, %20) : (f64, f64, f64) -> f64
    "neura.store"(%24, %19) : (f64, !llvm.ptr) -> ()
    %25 = "neura.load"(%16) : (!llvm.ptr) -> f64
    %26 = "neura.load"(%22) : (!llvm.ptr) -> f64
    %27 = "neura.gep"(%18) <{operandSegmentSizes = array<i32: 0, 1>}> {lhs_value = "%arg5"} : (i64) -> !llvm.ptr
    %28 = "neura.load"(%27) : (!llvm.ptr) -> f64
    %29 = "neura.fmul_fadd"(%26, %28, %25) : (f64, f64, f64) -> f64
    "neura.store"(%29, %16) : (f64, !llvm.ptr) -> ()
    %30 = "neura.add"(%18) {rhs_value = 1 : i64} : (i64) -> i64
    %31 = "neura.icmp"(%30, %14) <{cmpType = "eq"}> : (i64, i64) -> i1
    neura.cond_br %31 : i1 then to ^bb7 else %30 : i64 to ^bb6
  ^bb7:  // pred: ^bb6
    %32 = "neura.add"(%15) {rhs_value = 1 : i64} : (i64) -> i64
    %33 = "neura.icmp"(%32, %13) <{cmpType = "eq"}> : (i64, i64) -> i1
    neura.cond_br %33 : i1 then to ^bb8 else %32 : i64 to ^bb5
  ^bb8:  // 4 preds: ^bb1, ^bb2, ^bb3, ^bb7
    "neura.return"() : () -> ()
  }
}

