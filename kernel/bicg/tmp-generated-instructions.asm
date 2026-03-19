# Compiled II: 10

PE(0,0):
{
  GRANT_ONCE, [#0] -> [$0], [NORTH, RED] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  PHI_START, [$0], [EAST, RED] -> [$2], [NORTH, RED] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GEP, [arg1], [$0] -> [EAST, RED] (t=5, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [NORTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GEP, [arg3], [$1] -> [EAST, RED], [NORTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI_START, [$2], [$3] -> [$0], [EAST, RED] (t=7, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=7, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$1] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$0], [$1] -> [$3] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(1,0):
{
  CTRL_MOV, [EAST, RED] -> [WEST, RED] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  STORE, [NORTH, RED], [$0] (t=11, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  LOAD, [WEST, RED] -> [WEST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  LOAD, [WEST, RED] -> [WEST, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [EAST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(2,0):
{
  GRANT_PREDICATE, [WEST, RED], [NORTH, RED] -> [WEST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(0,1):
{
  CTRL_MOV, [EAST, RED] -> [$4] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  PHI_START, [SOUTH, RED], [EAST, RED] -> [$0], [NORTH, RED], [EAST, RED], [$1] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  PHI_START, [SOUTH, RED], [$2] -> [$2], [$3], [SOUTH, RED], [$0] (t=2, inv_iters=0)
  DATA_MOV, [$0] -> [NORTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ADD, [$0], [#1] -> [EAST, RED], [$0] (t=3, inv_iters=0)
  DATA_MOV, [$3] -> [SOUTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  PHI_START, [$1], [$4] -> [SOUTH, RED], [$0] (t=4, inv_iters=0)
  DATA_MOV, [$0] -> [EAST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [EAST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GEP, [NORTH, RED], [$2] -> [$0] (t=6, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=6, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  LOAD, [$0] -> [NORTH, RED], [$0] (t=7, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  MUL, [SOUTH, RED], [$0] -> [NORTH, RED] (t=8, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$2] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ADD, [SOUTH, RED], [NORTH, RED] -> [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(1,1):
{
  GRANT_PREDICATE, [$3], [$0] -> [WEST, RED] (t=10, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  SHL, [WEST, RED], [#5] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GEP, [arg0], [$0] -> [NORTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  ICMP_EQ, [WEST, RED], [#8] -> [$0], [WEST, RED], [SOUTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  NOT, [$0] -> [$1], [EAST, RED], [$3], [NORTH, RED], [$2], [WEST, RED] (t=5, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  ADD, [WEST, RED], [#1] -> [EAST, RED], [$3] (t=6, inv_iters=0)
  DATA_MOV, [$3] -> [NORTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED] (t=7, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=7, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$0], [$2] -> [WEST, RED] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(2,1):
{
  RETURN_VOID, [$0] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [WEST, RED] -> [WEST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  ICMP_EQ, [WEST, RED], [#8] -> [$0], [$1], [$2] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  NOT, [$0] -> [WEST, RED], [SOUTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$1], [$2] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(3,1):
{
  CONSTANT, [arg3] -> [NORTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(0,2):
{
  STORE, [$0], [$1] (t=10, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [$2] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GEP, [arg2], [$0] -> [EAST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GEP, [arg4], [$1] -> [NORTH, RED], [$0] (t=5, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI_START, [$0], [$2] -> [NORTH, RED], [$1], [EAST, RED] (t=6, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  LOAD, [$0] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  MUL, [$0], [SOUTH, RED] -> [SOUTH, RED] (t=8, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ADD, [$0], [SOUTH, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(1,2):
{
  GRANT_PREDICATE, [$2], [$3] -> [$0] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$4], [$5] -> [$1] (t=11, inv_iters=1)
} (idx_per_ii=1)
{
  PHI_START, [SOUTH, RED], [$1] -> [WEST, RED], [$4] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  PHI_START, [WEST, RED], [$0] -> [WEST, RED], [$2] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  DATA_MOV, [SOUTH, RED] -> [$3] (t=7, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [SOUTH, RED] -> [$5] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(3,2):
{
  CONSTANT, [#0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  MEMSET, [SOUTH, RED], [$0], [NORTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(0,3):
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  LOAD, [SOUTH, RED] -> [SOUTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  STORE, [#0], [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(3,3):
{
  CONSTANT, [#32] -> [SOUTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

