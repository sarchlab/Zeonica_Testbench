# Compiled II: 5

PE(0,1):
{
  GRANT_ONCE, [] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  PHI_START, [$0], [EAST, RED] -> [EAST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(1,1):
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)

PE(1,2):
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  VADD, [NORTH, RED], [SOUTH, RED] -> [SOUTH, RED], [$0] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [EAST, RED] -> [$1] (t=3, inv_iters=0)
  VECTOR.REDUCE.ADD, [$0] -> [$0] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  RETURN_VALUE, [$0] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(2,2):
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=5, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [EAST, RED] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  LOAD, [$0] -> [NORTH, RED] (t=3, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  NOT, [EAST, RED] -> [$1], [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  PHI_START, [$0], [WEST, RED] -> [NORTH, RED], [WEST, RED], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#4] -> [$0], [WEST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ICMP_EQ, [$0], [#32] -> [WEST, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)

PE(1,3):
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)

PE(2,3):
{
  VMUL, [SOUTH, RED], [EAST, RED] -> [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,3):
{
  GEP, [SOUTH, RED] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  LOAD, [$0] -> [WEST, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)

