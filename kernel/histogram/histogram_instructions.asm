# Compiled II: 5

PE(1,1):
{
  ADD, [$0], [#1] -> [NORTH, RED] (t=10, inv_iters=2)
} (idx_per_ii=0)
{
  GEP, [NORTH, RED] -> [$0], [NORTH, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [$0] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(3,1):
{
  GEP, [NORTH, RED] -> [NORTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)

PE(1,2):
{
  STORE, [SOUTH, RED], [$0] (t=11, inv_iters=2)
} (idx_per_ii=1)
{
  SEXT, [EAST, RED] -> [SOUTH, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(2,2):
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DIV, [NORTH, RED], [#19] -> [WEST, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ICMP_EQ, [EAST, RED], [#20] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  NOT, [$0] -> [$1] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  PHI, [WEST, RED], [$0] -> [SOUTH, RED], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#1] -> [WEST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  LOAD, [SOUTH, RED] -> [NORTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)

PE(0,3):
{
  RETURN (t=11, inv_iters=2)
} (idx_per_ii=1)

PE(2,3):
{
  ADD, [EAST, RED], [#-5] -> [SOUTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)

PE(3,3):
{
  MUL, [SOUTH, RED], [#5] -> [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

