# Compiled II: 1
# 4x4 GEMV streaming (no memory), scalar-friendly
# NORTH at column x=0 streams x[k]; WEST at (0,y) streams A[y,k]
# Each PE(0,y) accumulates into $0; others idle

PE(0,0):
{
  CONSTANT, [#0.0] -> [$0]
} (t=3)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=4)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=5)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=6)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=7)

PE(0,1):
{
  CONSTANT, [#0.0] -> [$0]
} (t=2)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=3)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=4)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=5)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=6)

PE(0,2):
{
  CONSTANT, [#0.0] -> [$0]
} (t=1)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=2)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=3)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=4)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=5)

PE(0,3):
{
  CONSTANT, [#0.0] -> [$0]
} (t=0)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=2)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=3)
{
  FMUL_FADD, [WEST, RED], [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=4)

PE(1,0):
# idle


PE(2,0):
# idle


PE(3,0):
# idle


PE(1,1):
# idle


PE(2,1):
# idle


PE(3,1):
# idle


PE(1,2):
# idle


PE(2,2):
# idle


PE(3,2):
# idle


PE(1,3):
# idle


PE(2,3):
# idle


PE(3,3):
# idle
