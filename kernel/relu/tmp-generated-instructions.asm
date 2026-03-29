# Compiled II: 5

PE(1,0):
{
  DATA_MOV, [EAST, RED] -> [$0] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  SEL, [EAST, RED], [$0], [NORTH, RED] -> [$0] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  STORE, [$0], [NORTH, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)

PE(2,0):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)

PE(3,0):
{
  ICMP_SGE, [$0], [#0] -> [WEST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [NORTH, RED] -> [$0], [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(1,1):
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=6, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [$0] -> [SOUTH, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)

PE(2,1):
{
  GEP, [arg1], [$0] -> [WEST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)

PE(3,1):
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)

PE(0,2):
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [$8] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_ONCE, [#0] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  PHI_START, [$0], [$8] -> [EAST, RED], [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(1,2):
{
  GRANT_PREDICATE, [$0], [$0] -> [$0] (t=5, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=5, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  RETURN_VOID, [$0] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(2,2):
{
  GRANT_PREDICATE, [$8], [$0] -> [$0] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  PHI_START, [EAST, RED], [$0] -> [EAST, RED], [SOUTH, RED], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#1] -> [$0], [$8] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ICMP_EQ, [$0], [#32] -> [$0], [WEST, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  NOT, [$0] -> [$0], [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [WEST, RED] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  GEP, [arg0], [WEST, RED] -> [SOUTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)

