# Compiled II: 5

PE(2,1):
{
  NOT, [NORTH, RED] -> [EAST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,1):
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [NORTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)

PE(2,2):
{
  SHL, [$0], [#1] -> [NORTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$1], [$2] -> [NORTH, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  GEP, [EAST, RED] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ICMP_EQ, [EAST, RED], [#20] -> [SOUTH, RED], [$1], [$2] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  PHI_START, [$0], [SOUTH, RED] -> [WEST, RED], [$1], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#1] -> [WEST, RED], [SOUTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GEP, [$1] -> [$0], [NORTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [NORTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(2,3):
{
  ADD, [SOUTH, RED], [EAST, RED] -> [EAST, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  RETURN_VOID, [SOUTH, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)

PE(3,3):
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  STORE, [WEST, RED], [$0] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

