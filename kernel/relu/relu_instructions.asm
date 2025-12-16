# Compiled II: 5

PE(2,1):
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$0], [$1] -> [NORTH, RED] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(3,1):
{
  CAST_TRUNC, [NORTH, RED] -> [$0], [NORTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  DIV, [$0], [#70] -> [NORTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)

PE(1,2):
{
  DATA_MOV, [EAST, RED] -> [$0] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [$0], [$1] -> [NORTH, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  RETURN (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(2,2):
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=5, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=5, inv_iters=1)
  CTRL_MOV, [SOUTH, RED] -> [$0] (t=10, inv_iters=2)
} (idx_per_ii=0)
{
  DATA_MOV, [EAST, RED] -> [$2] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=2, inv_iters=0)
  PHI, [SOUTH, RED], [$2] -> [NORTH, RED], [SOUTH, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  ICMP_EQ, [EAST, RED], [#4200] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  NOT, [$0] -> [$1], [SOUTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [WEST, RED], [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  PHI, [WEST, RED], [$0] -> [SOUTH, RED], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#1] -> [WEST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  REM, [SOUTH, RED], [#70] -> [NORTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  ZEXT, [SOUTH, RED] -> [NORTH, RED], [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(1,3):
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  STORE, [EAST, RED], [SOUTH, RED] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(2,3):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  SEL, [EAST, RED], [$0], [SOUTH, RED] -> [WEST, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)

PE(3,3):
{
  GEP, [SOUTH, RED], [$0] -> [$0] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [$0] -> [$0], [WEST, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  ICMP_SGE, [$0], [#0] -> [WEST, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  ZEXT, [SOUTH, RED] -> [$0], [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

