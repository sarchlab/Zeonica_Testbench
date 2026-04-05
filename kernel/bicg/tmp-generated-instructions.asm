# Compiled II: 10

PE(0,0):
{
  GRANT_ONCE, [#0] -> [$0], [NORTH, RED] (t=0, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$8] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  PHI_START, [$0], [EAST, RED] -> [$1], [NORTH, RED] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GEP, [arg1], [$0] -> [EAST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GEP, [arg3], [$0] -> [EAST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI_START, [$1], [$8] -> [EAST, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(1,0):
{
  GRANT_PREDICATE, [$9], [$0] -> [WEST, RED] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  STORE, [NORTH, RED], [$1] (t=11, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  LOAD, [WEST, RED] -> [NORTH, RED] (t=6, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$8] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  LOAD, [WEST, RED] -> [WEST, RED] (t=7, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$1] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [$9] (t=8, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$0], [$8] -> [WEST, RED] (t=9, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(3,0):
{
  CONSTANT, [#0] -> [NORTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(0,1):
{
  PHI_START, [SOUTH, RED], [NORTH, RED] -> [NORTH, RED], [EAST, RED], [$1] (t=1, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$8] (t=11, inv_iters=1)
} (idx_per_ii=1)
{
  PHI_START, [SOUTH, RED], [$0] -> [NORTH, RED], [SOUTH, RED], [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ADD, [$0], [#1] -> [EAST, RED], [$2] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  PHI_START, [$1], [$8] -> [EAST, RED], [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [EAST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [$2], [EAST, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  LOAD, [NORTH, RED] -> [NORTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  ADD, [SOUTH, RED], [NORTH, RED] -> [EAST, RED] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(1,1):
{
  GRANT_PREDICATE, [$1], [$8] -> [WEST, RED] (t=10, inv_iters=1)
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
  NOT, [$0] -> [WEST, RED], [NORTH, RED], [$8], [SOUTH, RED] (t=5, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$1] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  ADD, [WEST, RED], [#1] -> [$0], [NORTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  ICMP_EQ, [$0], [#8] -> [$0] (t=7, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  NOT, [$0] -> [WEST, RED], [SOUTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$0], [$0] -> [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(2,1):
{
  RETURN_VOID, [WEST, RED] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  CONSTANT, [arg3] -> [EAST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(3,1):
{
  CONSTANT, [#32] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  MEMSET, [WEST, RED], [SOUTH, RED], [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(0,2):
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [SOUTH, RED] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [$8] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GEP, [arg2], [$0] -> [EAST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GEP, [arg4], [$0] -> [$9], [EAST, RED] (t=5, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GEP, [$0], [$8] -> [$0] (t=6, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  LOAD, [$0] -> [$0], [EAST, RED] (t=7, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  MUL, [SOUTH, RED], [$0] -> [SOUTH, RED] (t=8, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  STORE, [#0], [$9] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(1,2):
{
  GRANT_PREDICATE, [$1], [$8] -> [$1] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$2], [$8] -> [$2] (t=11, inv_iters=1)
} (idx_per_ii=1)
{
  PHI_START, [SOUTH, RED], [$2] -> [WEST, RED], [$2] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  PHI_START, [WEST, RED], [$1] -> [WEST, RED], [$1] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI_START, [WEST, RED], [$0] -> [WEST, RED], [$0] (t=6, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$8] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  MUL, [SOUTH, RED], [WEST, RED] -> [NORTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$0], [$8] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(0,3):
{
  STORE, [EAST, RED], [$0] (t=10, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [SOUTH, RED] -> [EAST, RED] (t=8, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(1,3):
{
  ADD, [WEST, RED], [SOUTH, RED] -> [WEST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

