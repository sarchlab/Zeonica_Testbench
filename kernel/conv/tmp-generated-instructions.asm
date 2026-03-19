# Compiled II: 5

PE(2,0):
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(3,0):
{
  LOAD, [NORTH, RED] -> [$0] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [NORTH, RED] -> [$1] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  MUL, [$0], [$1] -> [WEST, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)

PE(1,1):
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=6, inv_iters=1)
  GRANT_PREDICATE, [EAST, RED], [$0] -> [NORTH, RED] (t=11, inv_iters=2)
} (idx_per_ii=1)

PE(2,1):
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=5, inv_iters=1)
  ADD, [SOUTH, RED], [$0] -> [WEST, RED], [$0] (t=10, inv_iters=2)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0] (t=11, inv_iters=2)
} (idx_per_ii=1)
{
  RETURN_VALUE, [$0] (t=12, inv_iters=2)
} (idx_per_ii=2)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(3,1):
{
  GEP, [arg7], [$0], [NORTH, RED] -> [SOUTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [arg6], [$1], [NORTH, RED] -> [SOUTH, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DIV, [NORTH, RED], [#70] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  ZEXT, [$0] -> [$1], [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(1,2):
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  PHI_START, [$0], [SOUTH, RED] -> [EAST, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)

PE(2,2):
{
  GRANT_PREDICATE, [$1], [$0] -> [$0] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  PHI_START, [EAST, RED], [$0] -> [EAST, RED], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#1] -> [$0], [$1] (t=2, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ICMP_EQ, [$0], [#4200] -> [$0], [$2] (t=3, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  NOT, [$0] -> [WEST, RED], [$0] (t=4, inv_iters=0)
  DATA_MOV, [$2] -> [SOUTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [WEST, RED], [$0] (t=0, inv_iters=0)
  DATA_MOV, [$0] -> [SOUTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [$0] -> [WEST, RED] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  CAST_TRUNC, [WEST, RED] -> [SOUTH, RED], [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  REM, [$0], [#70] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  ZEXT, [$0] -> [$0], [SOUTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

