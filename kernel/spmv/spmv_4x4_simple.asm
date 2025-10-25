# Compiled II: 3
# 4x4 SPMV (validation-only), per-row sequential on x=0
# Ports:
#   WEST provides tokens in time order: COL then VAL for each nonzero (per row)
# Registers: $0=accumulator (row sum), $1=addr/col, $2=loaded x[col]

PE(0,0):
{
  CONSTANT, [#0.0] -> [$0]
} (t=3)
# s=0
{
  DATA_MOV, [WEST, RED] -> [$1]
  GEP, [$1] -> [$1]
} (t=4)
{
  LOAD, [$1] -> [$2]
} (t=5)
{
  FMUL_FADD, [WEST, RED], [$2], [$0] -> [$0]
} (t=6)
# s=1
{
  DATA_MOV, [WEST, RED] -> [$1]
  GEP, [$1] -> [$1]
} (t=7)
{
  LOAD, [$1] -> [$2]
} (t=8)
{
  FMUL_FADD, [WEST, RED], [$2], [$0] -> [$0]
} (t=9)

PE(0,1):
{
  CONSTANT, [#0.0] -> [$0]
} (t=2)
# s=0
{
  DATA_MOV, [WEST, RED] -> [$1]
  GEP, [$1] -> [$1]
} (t=3)
{
  LOAD, [$1] -> [$2]
} (t=4)
{
  FMUL_FADD, [WEST, RED], [$2], [$0] -> [$0]
} (t=5)

PE(0,2):
{
  CONSTANT, [#0.0] -> [$0]
} (t=1)
# s=0
{
  DATA_MOV, [WEST, RED] -> [$1]
  GEP, [$1] -> [$1]
} (t=2)
{
  LOAD, [$1] -> [$2]
} (t=3)
{
  FMUL_FADD, [WEST, RED], [$2], [$0] -> [$0]
} (t=4)
# s=1
{
  DATA_MOV, [WEST, RED] -> [$1]
  GEP, [$1] -> [$1]
} (t=5)
{
  LOAD, [$1] -> [$2]
} (t=6)
{
  FMUL_FADD, [WEST, RED], [$2], [$0] -> [$0]
} (t=7)

PE(0,3):
{
  CONSTANT, [#0.0] -> [$0]
} (t=0)
# s=0
{
  DATA_MOV, [WEST, RED] -> [$1]
  GEP, [$1] -> [$1]
} (t=1)
{
  LOAD, [$1] -> [$2]
} (t=2)
{
  FMUL_FADD, [WEST, RED], [$2], [$0] -> [$0]
} (t=3)
