# Compiled II: 5

PE(0,0):
{
  ADD, [EAST, RED], [NORTH, RED] -> [$0] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  STORE, [$0], [NORTH, RED] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(1,0):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)

PE(2,0):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)

PE(3,0):
{
  MUL, [$0], [#3] -> [WEST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [NORTH, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(0,1):
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)

PE(1,1):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)

PE(2,1):
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)

PE(3,1):
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)

PE(0,2):
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=6, inv_iters=1)
} (idx_per_ii=1)

PE(1,2):
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [$0] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  RETURN_VOID, [$0] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(2,2):
{
  GRANT_PREDICATE, [$1], [$0] -> [$0] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  PHI_START, [EAST, RED], [$0] -> [EAST, RED], [NORTH, RED], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#1] -> [$0], [$1] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ICMP_EQ, [$0], [#16] -> [$0], [WEST, RED], [$2] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  NOT, [$0] -> [$0] (t=4, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=4, inv_iters=0)
  DATA_MOV, [$2] -> [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [WEST, RED] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  GEP, [arg0], [WEST, RED] -> [SOUTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)

PE(0,3):
{
  LOAD, [EAST, RED] -> [SOUTH, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)

PE(1,3):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(2,3):
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GEP, [arg1], [$0] -> [WEST, RED], [SOUTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)

