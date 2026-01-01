# Compiled II: 5

PE(2,1):
{
  SEL, [$0], [$1], [$2] -> [$0] (t=10, inv_iters=2)
  DATA_MOV, [NORTH, RED] -> [$1] (t=10, inv_iters=2)
} (idx_per_ii=0)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=6, inv_iters=1)
  STORE, [$0], [$1] (t=11, inv_iters=2)
} (idx_per_ii=1)
{
  GEP, [NORTH, RED], [$0] -> [$0] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  LOAD, [$0] -> [$0], [$1] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  ICMP_SGE, [$0], [#0] -> [$0] (t=9, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$2] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(3,1):
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [NORTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=3, inv_iters=0)
  GRANT_PREDICATE, [$1], [$0] -> [$1] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=4, inv_iters=0)
  RETURN_VOID, [$1] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(1,2):
{
  DATA_MOV, [EAST, RED] -> [$2] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=2, inv_iters=0)
  PHI_START, [$0], [$1] -> [EAST, RED], [$1] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$1], [$2] -> [$1] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(2,2):
{
  ZEXT, [$0] -> [SOUTH, RED], [NORTH, RED] (t=5, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=1, inv_iters=0)
  ZEXT, [$1] -> [SOUTH, RED], [NORTH, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  CAST_TRUNC, [EAST, RED] -> [$1], [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  REM, [$0], [#70] -> [$0] (t=3, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  DIV, [$1], [#70] -> [$1] (t=4, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [EAST, RED] (t=4, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [WEST, RED], [$0] (t=0, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  PHI_START, [$0], [SOUTH, RED] -> [WEST, RED], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#1] -> [$0], [SOUTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ICMP_EQ, [$0], [#4200] -> [$0], [SOUTH, RED], [WEST, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  NOT, [$0] -> [SOUTH, RED], [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(2,3):
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [$0], [$1] -> [SOUTH, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)

