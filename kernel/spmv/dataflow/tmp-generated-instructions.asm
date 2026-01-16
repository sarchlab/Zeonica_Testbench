# Compiled II: 9

PE(0,1):
{
  MUL, [NORTH, RED], [EAST, RED] -> [EAST, RED] (t=10, inv_iters=1)
} (idx_per_ii=1)

PE(1,1):
{
  LOAD, [$0] -> [WEST, RED] (t=9, inv_iters=1)
} (idx_per_ii=0)
{
  NOT, [NORTH, RED] -> [$0] (t=10, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$1], [$0] -> [NORTH, RED] (t=11, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=11, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$1] (t=11, inv_iters=1)
} (idx_per_ii=2)
{
  ADD, [NORTH, RED], [$0] -> [$0] (t=12, inv_iters=1)
} (idx_per_ii=3)
{
  STORE, [$0], [$1] (t=13, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GEP, [$0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(2,1):
{
  GRANT_ONCE, [arg0] -> [NORTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)

PE(0,2):
{
  LOAD, [$0] -> [SOUTH, RED] (t=9, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [EAST, RED] -> [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  LOAD, [$0] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  SEXT, [$0] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GEP, [$0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(1,2):
{
  ICMP_EQ, [$2], [$0] -> [SOUTH, RED], [$0], [$1] (t=9, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=10, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=10, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_ONCE, [#0] -> [$0] (t=2, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=11, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [$0] (t=3, inv_iters=0)
  CTRL_MOV, [SOUTH, RED] -> [$1] (t=12, inv_iters=1)
} (idx_per_ii=3)
{
  PHI_START, [$0], [$1] -> [SOUTH, RED], [WEST, RED], [$1], [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  ADD, [$0], [#1] -> [$2], [SOUTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GEP, [$1] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  LOAD, [$0] -> [NORTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  ZEXT, [EAST, RED] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(2,2):
{
  CONSTANT, [arg0] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  ICMP_SGT, [$0], [#0] -> [$0], [$1] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  GRANT_ONCE, [$0] -> [$0], [WEST, RED], [EAST, RED] (t=2, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=11, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [WEST, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  NOT, [$1] -> [NORTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(3,2):
{
  NOT, [$0] -> [NORTH, RED] (t=9, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)

PE(1,3):
{
  GEP, [$0] -> [$0], [SOUTH, RED] (t=9, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [$0] -> [SOUTH, RED] (t=10, inv_iters=1)
} (idx_per_ii=1)
{
  SEXT, [SOUTH, RED] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(2,3):
{
  GRANT_ONCE, [SOUTH, RED] -> [EAST, RED] (t=9, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=11, inv_iters=1)
} (idx_per_ii=2)
{
  PHI, [$0], [SOUTH, RED] -> [$0] (t=12, inv_iters=1)
} (idx_per_ii=3)
{
  RETURN_VOID, [$0] (t=13, inv_iters=1)
} (idx_per_ii=4)

PE(3,3):
{
  GRANT_PREDICATE, [WEST, RED], [SOUTH, RED] -> [WEST, RED] (t=10, inv_iters=1)
} (idx_per_ii=1)

