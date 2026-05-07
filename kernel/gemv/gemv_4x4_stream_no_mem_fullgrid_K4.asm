# Compiled II: 4
# 4x4 GEMV streaming (no memory), scalar-friendly
# NORTH at column x=0 streams x[k]; WEST at (0,y) streams A[y,k]
# Each PE(0,y) accumulates into $0; others idle

PE(*,*):
{
  LOAD, [$3] -> [$1] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=1, inv_iters=0)
  MUL, [$1], [NORTH, RED] -> [$2]
} (idx_per_ii=1)
{
  ADD, [WEST, RED], [$2] -> [EAST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ADD, [$3], [#1] -> [$3] (t=3, inv_iters=0)
} (idx_per_ii=3)

