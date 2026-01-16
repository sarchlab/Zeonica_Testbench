# Compiled II: 5

PE(3,1):
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=5, inv_iters=1)
  GRANT_PREDICATE, [$0], [$1] -> [$2] (t=10, inv_iters=2)
} (idx_per_ii=0)
{
  RETURN_VOID, [$2] (t=11, inv_iters=2)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(2,2):
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [EAST, RED] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  LOAD, [$0] -> [EAST, RED] (t=3, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  NOT, [EAST, RED] -> [$1] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  PHI_START, [$0], [WEST, RED] -> [WEST, RED], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  ADD, [$0], [#1] -> [$0], [WEST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  ICMP_EQ, [$0], [#20] -> [WEST, RED], [SOUTH, RED], [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  MUL, [WEST, RED], [#5] -> [NORTH, RED] (t=4, inv_iters=0)
  DATA_MOV, [$0] -> [SOUTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)

PE(2,3):
{
  ADD, [EAST, RED], [#1] -> [$0] (t=10, inv_iters=2)
} (idx_per_ii=0)
{
  STORE, [$0], [$1] (t=11, inv_iters=2)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [$1] (t=9, inv_iters=1)
} (idx_per_ii=4)

PE(3,3):
{
  ADD, [SOUTH, RED], [#-5] -> [$0] (t=5, inv_iters=1)
} (idx_per_ii=0)
{
  DIV, [$0], [#18] -> [$0] (t=6, inv_iters=1)
} (idx_per_ii=1)
{
  SEXT, [$0] -> [$0] (t=7, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [$0] -> [$0], [WEST, RED] (t=8, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [WEST, RED] (t=9, inv_iters=1)
} (idx_per_ii=4)

