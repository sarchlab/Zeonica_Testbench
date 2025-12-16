# Compiled II: 5

PE(3,1):
{
  GEP, [NORTH, RED] -> [NORTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)

PE(1,2):
{
  RETURN (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  GEP, [EAST, RED] -> [$0], [NORTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [EAST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(2,2):
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=5, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=2, inv_iters=0)
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
  PHI, [WEST, RED], [$0] -> [SOUTH, RED], [WEST, RED], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#1] -> [WEST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  LOAD, [SOUTH, RED] -> [NORTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)

PE(1,3):
{
  STORE, [EAST, RED], [$0] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(2,3):
{
  DATA_MOV, [EAST, RED] -> [$0] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  ADD, [$0], [SOUTH, RED] -> [WEST, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)

PE(3,3):
{
  SHL, [SOUTH, RED], [#1] -> [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

