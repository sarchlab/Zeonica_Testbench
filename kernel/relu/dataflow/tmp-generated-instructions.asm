# Compiled II: 5

PE(2,1):
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=2, inv_iters=0)
  LOAD, [EAST, RED] -> [NORTH, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=4, inv_iters=0)
  RETURN_VOID, [$0] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(3,1):
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [$0] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [$0] -> [WEST, RED], [NORTH, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)

PE(2,2):
{
  GRANT_PREDICATE, [$1], [$0] -> [$0] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  PHI_START, [EAST, RED], [$0] -> [EAST, RED], [SOUTH, RED], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#1] -> [$0], [$1] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ICMP_EQ, [$0], [#32] -> [$0], [SOUTH, RED], [$2] (t=3, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  NOT, [$0] -> [$0] (t=4, inv_iters=0)
  DATA_MOV, [$2] -> [SOUTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [WEST, RED] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  GEP, [WEST, RED] -> [$0] (t=2, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  LOAD, [$0] -> [$0], [NORTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  ICMP_SGT, [$0], [#0] -> [SOUTH, RED], [NORTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(2,3):
{
  STORE, [$0], [$1] (t=10, inv_iters=2)
} (idx_per_ii=0)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  ADD, [SOUTH, RED], [$0] -> [$0] (t=9, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$1] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(3,3):
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

