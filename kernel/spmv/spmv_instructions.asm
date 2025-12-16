# Compiled II: 9

PE(0,0):
{
  GEP, [NORTH, RED] -> [NORTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(0,1):
{
  LOAD, [SOUTH, RED] -> [$0] (t=9, inv_iters=1)
} (idx_per_ii=0)
{
  MUL, [EAST, RED], [$0] -> [NORTH, RED] (t=10, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=11, inv_iters=1)
} (idx_per_ii=2)
{
  STORE, [NORTH, RED], [$0] (t=13, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [NORTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(1,1):
{
  LOAD, [$0] -> [WEST, RED] (t=9, inv_iters=1)
} (idx_per_ii=0)
{
  NOT, [NORTH, RED] -> [EAST, RED] (t=11, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GEP, [EAST, RED] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(2,1):
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [NORTH, RED] (t=12, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  SEXT, [EAST, RED] -> [WEST, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)

PE(3,1):
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  LOAD, [NORTH, RED] -> [WEST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)

PE(0,2):
{
  ZEXT, [SOUTH, RED] -> [EAST, RED] (t=9, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=10, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=11, inv_iters=1)
} (idx_per_ii=2)
{
  ADD, [EAST, RED], [$0] -> [SOUTH, RED] (t=12, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_ONCE, [arg0] -> [SOUTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  SEXT, [NORTH, RED] -> [EAST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(1,2):
{
  GEP, [WEST, RED] -> [EAST, RED], [WEST, RED] (t=9, inv_iters=1)
} (idx_per_ii=0)
{
  ICMP_EQ, [$0], [WEST, RED] -> [SOUTH, RED] (t=10, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_ONCE, [#0] -> [EAST, RED] (t=2, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=11, inv_iters=1)
} (idx_per_ii=2)
{
  RETURN (t=12, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)

PE(2,2):
{
  CONSTANT, [arg0] -> [EAST, RED] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  LOAD, [WEST, RED] -> [WEST, RED] (t=10, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [WEST, RED], [EAST, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  PHI, [SOUTH, RED], [$0] -> [SOUTH, RED], [EAST, RED], [WEST, RED], [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  ADD, [$0], [#1] -> [WEST, RED], [SOUTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)

PE(3,2):
{
  ICMP_SGT, [WEST, RED], [#0] -> [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  GRANT_ONCE, [$0] -> [SOUTH, RED], [WEST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GEP, [WEST, RED] -> [SOUTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)

PE(0,3):
{
  LOAD, [EAST, RED] -> [SOUTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)

PE(1,3):
{
  GEP, [SOUTH, RED] -> [WEST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)

