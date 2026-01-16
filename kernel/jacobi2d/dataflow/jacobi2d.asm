# Jacobi-2D (5-point) on 4x4 systolic array — Line-buffered streaming
# Compiled II: 1
# Coefficients: alpha_c=0.0, alpha_w=alpha_e=alpha_n=alpha_s=0.25 (float32)
# Per-pixel timeline (steady, one-port-per-cycle):
#   t+0..1: constants
#   t+2: acc = αw * [WEST]  + 0
#   t+3: acc = αe * [EAST]  + acc
#   t+4: acc = αn * [NORTH] + acc
#   t+5: acc = αs * [SOUTH] + acc  -> EAST

PE(0,0):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1], [$2], [$3], [$4]
  DATA_MOV, [$7] -> [NORTH, RED], [EAST, RED]
} (t=1)
{
  FMUL_FADD, [$1], [$7], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$2], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$3], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$4], [$7], [$6] -> [EAST, BLUE]
} (t=5)

PE(0,1):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1], [$2], [$3], [$4]
  DATA_MOV, [$7] -> [NORTH, RED], [EAST, RED], [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [$7], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$2], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$3], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$4], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(0,2):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1], [$2], [$3], [$4]
  DATA_MOV, [$7] -> [NORTH, RED], [EAST, RED], [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [$7], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$2], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$3], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$4], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(0,3):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1], [$2], [$3], [$4]
  DATA_MOV, [$7] -> [EAST, RED], [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [$7], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$2], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$3], [$7], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$4], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)