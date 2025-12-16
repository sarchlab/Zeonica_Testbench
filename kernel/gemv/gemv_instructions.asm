# Compiled II: 10

PE(0,0):
{
  GRANT_ONCE, [#0] -> [NORTH, RED], [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  PHI, [EAST, RED], [$0] -> [$0], [NORTH, RED] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  SHL, [$0], [#4] -> [NORTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GEP, [NORTH, RED], [$0] -> [NORTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(1,0):
{
  CTRL_MOV, [EAST, RED] -> [WEST, RED] (t=10, inv_iters=1)
} (idx_per_ii=0)

PE(2,0):
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [WEST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(0,1):
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [$0] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  PHI, [$0], [SOUTH, RED] -> [$2], [$0] (t=1, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$3] (t=11, inv_iters=1)
} (idx_per_ii=1)
{
  PHI, [EAST, RED], [$0] -> [SOUTH, RED], [NORTH, RED], [EAST, RED] (t=2, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GEP, [SOUTH, RED] -> [SOUTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  PHI, [$4], [$0] -> [$4], [EAST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  LOAD, [SOUTH, RED] -> [NORTH, RED] (t=5, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI, [EAST, RED], [$2] -> [EAST, RED] (t=7, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$2] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [NORTH, RED] (t=8, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$1] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$4], [$2] -> [$4] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(1,1):
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  ADD, [WEST, RED], [#1] -> [$0], [$2] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  ICMP_EQ, [$0], [#4] -> [$1], [$0], [WEST, RED], [$3], [NORTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [NORTH, RED], [EAST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  NOT, [$1] -> [$0], [$4], [WEST, RED], [$1], [NORTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$2], [$0] -> [WEST, RED] (t=7, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [WEST, RED], [$3] -> [WEST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [NORTH, RED], [$4] -> [NORTH, RED] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(2,1):
{
  ADD, [WEST, RED], [#1] -> [$0], [SOUTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  ICMP_EQ, [$0], [#4] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  NOT, [$0] -> [SOUTH, RED], [WEST, RED], [NORTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(0,2):
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GEP, [$0] -> [NORTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  MUL, [NORTH, RED], [SOUTH, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  ADD, [$0], [EAST, RED] -> [EAST, RED], [SOUTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(1,2):
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=10, inv_iters=1)
  CTRL_MOV, [SOUTH, RED] -> [$4] (t=10, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [$1] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_ONCE, [#0] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  PHI, [EAST, RED], [$0] -> [$1], [$0] (t=5, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$2] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI, [SOUTH, RED], [$0] -> [WEST, RED] (t=6, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI, [$3], [$1] -> [$1], [$0] (t=7, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$3] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [$0], [$2] -> [EAST, RED] (t=8, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$1], [$3] -> [$3] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(2,2):
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [WEST, RED], [SOUTH, RED] -> [WEST, RED] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(3,2):
{
  GEP, [WEST, RED] -> [WEST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(0,3):
{
  LOAD, [SOUTH, RED] -> [SOUTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  RETURN (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(1,3):
{
  STORE, [SOUTH, RED], [EAST, RED] (t=11, inv_iters=1)
} (idx_per_ii=1)

PE(2,3):
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=10, inv_iters=1)
} (idx_per_ii=0)

