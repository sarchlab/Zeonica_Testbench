# Compiled II: 2
# 4x4 SPMV streaming (no memory): WEST streams XVAL then VAL; accumulator $0

PE(0,0):
{
  CONSTANT, [#0.0] -> [$0]
} (t=3)
{
  DATA_MOV, [WEST, RED] -> [$2]
} (t=4)
{
  FMUL_FADD, [WEST, RED], [$2], [$0] -> [$0]
} (t=5)
{
  DATA_MOV, [WEST, RED] -> [$2]
} (t=6)
{
  FMUL_FADD, [WEST, RED], [$2], [$0] -> [$0]
} (t=7)

PE(0,1):
{
  CONSTANT, [#0.0] -> [$0]
} (t=2)
{
  DATA_MOV, [WEST, RED] -> [$2]
} (t=3)
{
  FMUL_FADD, [WEST, RED], [$2], [$0] -> [$0]
} (t=4)

PE(0,2):
{
  CONSTANT, [#0.0] -> [$0]
} (t=1)
{
  DATA_MOV, [WEST, RED] -> [$2]
} (t=2)
{
  FMUL_FADD, [WEST, RED], [$2], [$0] -> [$0]
} (t=3)
{
  DATA_MOV, [WEST, RED] -> [$2]
} (t=4)
{
  FMUL_FADD, [WEST, RED], [$2], [$0] -> [$0]
} (t=5)

PE(0,3):
{
  CONSTANT, [#0.0] -> [$0]
} (t=0)
{
  DATA_MOV, [WEST, RED] -> [$2]
} (t=1)
{
  FMUL_FADD, [WEST, RED], [$2], [$0] -> [$0]
} (t=2)
