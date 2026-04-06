# Compiled II: 5

PE(2,0):
{
  GRANT_ONCE, [#0] -> [NORTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [NORTH, RED] -> [EAST, RED] (t=3, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)

PE(3,0):
{
  SUB, [$0], [$8] -> [NORTH, RED], [$0], [$8] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  ICMP_SLT, [$0], [#0] -> [$0] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  SEL, [$0], [NORTH, RED], [$8] -> [WEST, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  LOAD, [NORTH, RED] -> [$8] (t=4, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(1,1):
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=5, inv_iters=1)
  GRANT_PREDICATE, [EAST, RED], [$0] -> [$8] (t=10, inv_iters=2)
} (idx_per_ii=0)
{
  RETURN_VALUE, [$8] (t=11, inv_iters=2)
} (idx_per_ii=1)

PE(2,1):
{
  DATA_MOV, [NORTH, RED] -> [$8] (t=5, inv_iters=1)
  GRANT_PREDICATE, [$0], [$8] -> [$0] (t=10, inv_iters=2)
} (idx_per_ii=0)
{
  PHI_START, [SOUTH, RED], [$0] -> [$0] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  GEP, [arg0], [NORTH, RED] -> [SOUTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ADD, [SOUTH, RED], [$0] -> [$0], [WEST, RED] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(3,1):
{
  SUB, [#0], [SOUTH, RED] -> [SOUTH, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)

PE(1,2):
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(2,2):
{
  GRANT_PREDICATE, [$8], [$0] -> [$0] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  PHI_START, [EAST, RED], [$0] -> [SOUTH, RED], [EAST, RED], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#1] -> [$0], [$8] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ICMP_EQ, [$0], [#8] -> [$0], [WEST, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  NOT, [$0] -> [$0], [SOUTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [WEST, RED] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  GEP, [arg1], [WEST, RED] -> [SOUTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)

