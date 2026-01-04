# Compiled II: 11

PE(0,0):
{
  GRANT_ONCE, [#0] -> [NORTH, RED], [EAST, RED] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  MUL, [NORTH, RED], [EAST, RED] -> [EAST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)

PE(1,0):
{
  PHI_START, [WEST, RED], [NORTH, RED] -> [$0], [NORTH, RED] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  SHL, [$0], [#4] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GEP, [$0] -> [$0] (t=3, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$1] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GEP, [$0], [$1] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  LOAD, [$0] -> [WEST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)

PE(2,0):
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(3,0):
{
  CTRL_MOV, [NORTH, RED] -> [$2] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_ONCE, [#0] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  PHI_START, [$0], [$2] -> [$0], [NORTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI_START, [$0], [$1] -> [NORTH, RED], [WEST, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  CTRL_MOV, [NORTH, RED] -> [$1] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(0,1):
{
  PHI_START, [SOUTH, RED], [NORTH, RED] -> [$0], [EAST, RED] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  DATA_MOV, [$0] -> [EAST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GEP, [$0] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  LOAD, [$0] -> [SOUTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)

PE(1,1):
{
  GRANT_PREDICATE, [$5], [$1] -> [SOUTH, RED] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  STORE, [$6], [$7] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  PHI_START, [WEST, RED], [$0] -> [SOUTH, RED], [WEST, RED], [$0] (t=2, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ADD, [$0], [#1] -> [NORTH, RED], [$0] (t=3, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$2] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  PHI_START, [$1], [$3] -> [$1], [$0] (t=4, inv_iters=0)
  DATA_MOV, [$0] -> [NORTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [EAST, RED], [$0] (t=5, inv_iters=0)
  DATA_MOV, [$1] -> [NORTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  ADD, [$0], [#1] -> [EAST, RED], [$5] (t=6, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$3] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI_START, [$2], [$4] -> [$2], [NORTH, RED] (t=7, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  ADD, [SOUTH, RED], [EAST, RED] -> [NORTH, RED], [$1] (t=8, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$4] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$1], [$3] -> [$6] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$7] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$2], [$4] -> [$4] (t=10, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$1] (t=10, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$3] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(2,1):
{
  RETURN_VOID, [$0] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=6, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$1] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  ICMP_EQ, [WEST, RED], [#4] -> [NORTH, RED], [$2], [$3] (t=7, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GEP, [$1] -> [WEST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [NORTH, RED] (t=9, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$2], [$3] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(3,1):
{
  CTRL_MOV, [NORTH, RED] -> [SOUTH, RED] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  CTRL_MOV, [NORTH, RED] -> [$0] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  PHI_START, [SOUTH, RED], [$0] -> [WEST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=8, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$1] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(0,2):
{
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [EAST, RED] -> [EAST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)

PE(1,2):
{
  ICMP_EQ, [SOUTH, RED], [#4] -> [$0], [SOUTH, RED], [$1], [$2], [EAST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  NOT, [$0] -> [$1], [$4], [$3], [WEST, RED], [EAST, RED] (t=5, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=5, inv_iters=0)
  DATA_MOV, [$1] -> [SOUTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED] (t=6, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [SOUTH, RED], [$2] -> [EAST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$0], [$3] -> [SOUTH, RED] (t=9, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$0], [$4] -> [EAST, RED] (t=10, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [WEST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(2,2):
{
  CTRL_MOV, [WEST, RED] -> [EAST, RED] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  NOT, [SOUTH, RED] -> [SOUTH, RED], [$1], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [WEST, RED], [$1] -> [WEST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [EAST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(3,2):
{
  CTRL_MOV, [WEST, RED] -> [SOUTH, RED] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  CTRL_MOV, [WEST, RED] -> [SOUTH, RED] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)

