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
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=7, inv_iters=1)
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
  DATA_MOV, [$0] -> [EAST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  CTRL_MOV, [EAST, RED] -> [$1] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_ONCE, [#0] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  PHI_START, [$0], [$1] -> [EAST, RED], [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(1,2):
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [NORTH, RED] (t=5, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [WEST, RED], [EAST, RED] -> [WEST, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(2,2):
{
  GRANT_PREDICATE, [$1], [$0] -> [$0] (t=5, inv_iters=1)
  DATA_MOV, [$2] -> [WEST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  PHI_START, [EAST, RED], [$0] -> [EAST, RED], [SOUTH, RED], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#1] -> [$0], [$1] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ICMP_EQ, [$0], [#32] -> [$0], [WEST, RED], [$2] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  NOT, [$0] -> [$0], [$2] (t=4, inv_iters=0)
  DATA_MOV, [$2] -> [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [WEST, RED] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  GEP, [arg0], [WEST, RED] -> [SOUTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)

PE(1,3):
{
  RETURN_VOID, [SOUTH, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)

