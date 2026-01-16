# Compiled II: 5

PE(1,1):
{
  DATA_MOV, [EAST, RED] -> [$0] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  ADD, [NORTH, RED], [$0] -> [EAST, RED] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(2,1):
{
  STORE, [WEST, RED], [$1] (t=10, inv_iters=2)
} (idx_per_ii=0)
{
  GEP, [NORTH, RED] -> [$0], [$1] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [$0] -> [WEST, RED] (t=7, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [NORTH, RED] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(3,1):
{
  NOT, [$0] -> [NORTH, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)

PE(0,2):
{
  GRANT_ONCE, [#0] -> [EAST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)

PE(1,2):
{
  GEP, [EAST, RED] -> [$0] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [$0] -> [$0] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=3, inv_iters=0)
  MUL, [$0], [arg1] -> [SOUTH, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)

PE(2,2):
{
  PHI_START, [$0], [SOUTH, RED] -> [WEST, RED], [SOUTH, RED], [$0] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  ADD, [$0], [#1] -> [NORTH, RED], [SOUTH, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=3, inv_iters=0)
  NOT, [NORTH, RED] -> [SOUTH, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [$0] (t=4, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(3,2):
{
  CONSTANT, [arg0] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  ICMP_SGT, [$0], [#0] -> [$0], [NORTH, RED] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  GRANT_ONCE, [$0] -> [NORTH, RED], [WEST, RED], [SOUTH, RED] (t=2, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [WEST, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)

PE(2,3):
{
  PHI, [SOUTH, RED], [$0] -> [$0] (t=10, inv_iters=2)
} (idx_per_ii=0)
{
  RETURN_VOID, [$0] (t=11, inv_iters=2)
} (idx_per_ii=1)
{
  ICMP_EQ, [SOUTH, RED], [EAST, RED] -> [SOUTH, RED], [$0], [$1] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0] (t=8, inv_iters=1)
} (idx_per_ii=3)

PE(3,3):
{
  NOT, [$2] -> [$1] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  ZEXT, [$0] -> [WEST, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [SOUTH, RED] -> [$2] (t=2, inv_iters=0)
  GRANT_ONCE, [$1] -> [SOUTH, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_ONCE, [arg0] -> [$0] (t=3, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

