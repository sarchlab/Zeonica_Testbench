# Compiled II: 13

PE(0,0):
{
  CONSTANT, [arg0] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  ICMP_SGT, [$0], [#0] -> [NORTH, RED] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  GRANT_ONCE, [arg1] -> [NORTH, RED], [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [$0], [$1] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  ICMP_SGT, [$0], [#0] -> [EAST, RED], [$0], [NORTH, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$1], [$0] -> [EAST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(1,0):
{
  ZEXT, [WEST, RED] -> [EAST, RED] (t=13, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [$1] -> [NORTH, RED] (t=14, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=14, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=15, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  NOT, [WEST, RED] -> [$0], [$1] (t=12, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(2,0):
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [WEST, RED] (t=13, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=0)
{
  SHL, [WEST, RED], [#3] -> [$2], [$1] (t=14, inv_iters=1)
} (idx_per_ii=1)
{
  STORE, [$0] (t=15, inv_iters=1)
} (idx_per_ii=2)
{
  RETURN_VOID, [$1] (t=16, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=16, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$1] (t=16, inv_iters=1)
} (idx_per_ii=3)
{
  MEMSET, [$0], [$1], [$2] (t=17, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(3,0):
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GRANT_ONCE, [arg4] -> [WEST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(0,1):
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=13, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_ONCE, [SOUTH, RED] -> [NORTH, RED], [SOUTH, RED], [EAST, RED], [$0], [$2] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [$0], [$1] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  ICMP_SGT, [$0], [#0] -> [$3], [$0], [NORTH, RED], [EAST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  RETURN_VOID, [EAST, RED] (t=18, inv_iters=1)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [$1], [$0] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  ZEXT, [$0] -> [NORTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  NOT, [$2] -> [SOUTH, RED], [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  NOT, [$3] -> [$0], [$1] (t=12, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(1,1):
{
  GEP, [$2] -> [NORTH, RED] (t=13, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=13, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [$2] (t=13, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [$3], [$4] -> [NORTH, RED], [$0] (t=14, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$4] (t=14, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [$0] -> [$0] (t=15, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$1] (t=15, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$3] (t=15, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$5] (t=15, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=3, inv_iters=0)
  FMUL_FADD, [$0], [$1], [$3] -> [EAST, RED] (t=16, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=4, inv_iters=0)
  PHI, [$4], [$5], [NORTH, RED] -> [WEST, RED] (t=17, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [$3] (t=17, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [NORTH, RED], [WEST, RED] -> [$0], [$1] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI_START, [$0], [EAST, RED] -> [EAST, RED], [$0] (t=6, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$5] (t=19, inv_iters=1)
} (idx_per_ii=6)
{
  PHI_START, [$0], [NORTH, RED] -> [EAST, RED], [$4], [$2], [NORTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  PHI_START, [$1], [EAST, RED] -> [EAST, RED], [$1], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [$0], [NORTH, RED] -> [$3], [NORTH, RED], [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [$0] (t=10, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  ADD, [$0], [#1] -> [NORTH, RED], [SOUTH, RED] (t=11, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GEP, [$1] -> [EAST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(2,1):
{
  PHI_START, [$1], [$2] -> [$2], [NORTH, RED] (t=13, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=13, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [$0] -> [NORTH, RED] (t=14, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=14, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=14, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=14, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$2] (t=14, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [SOUTH, RED] (t=15, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=15, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$1], [$2] -> [WEST, RED] (t=16, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$2], [$3] -> [$2] (t=17, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=5, inv_iters=0)
  STORE, [$0], [$4] (t=18, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [WEST, RED] (t=18, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GEP, [$0] -> [SOUTH, RED], [NORTH, RED], [$4] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=12, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$3] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(3,1):
{
  GRANT_ONCE, [arg3] -> [$1] (t=13, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [$0] -> [WEST, RED] (t=14, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$1], [$2] -> [NORTH, RED] (t=15, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  DATA_MOV, [SOUTH, RED] -> [$2] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GEP, [$0] -> [$0], [NORTH, RED] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(0,2):
{
  GRANT_PREDICATE, [$1], [$2] -> [$2] (t=15, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=3, inv_iters=0)
  GRANT_PREDICATE, [$0], [EAST, RED] -> [$1] (t=16, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  ZEXT, [$0] -> [EAST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [SOUTH, RED], [$1] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI_START, [$0], [$2] -> [$1], [EAST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  DATA_MOV, [EAST, RED] -> [$2] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(1,2):
{
  ICMP_EQ, [$0], [$1] -> [EAST, RED], [$0], [$1] (t=13, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [SOUTH, RED] -> [SOUTH, RED] (t=14, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [SOUTH, RED] -> [EAST, RED] (t=15, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=15, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [NORTH, RED], [SOUTH, RED] -> [SOUTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$3], [$4] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=5)
{
  ADD, [SOUTH, RED], [#1] -> [$0], [$2] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ICMP_EQ, [$0], [WEST, RED] -> [$0], [SOUTH, RED], [$1], [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  NOT, [$0] -> [$0], [$4], [WEST, RED], [EAST, RED] (t=10, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$3] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  GRANT_PREDICATE, [WEST, RED], [$1] -> [$1], [WEST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$2], [$0] -> [SOUTH, RED] (t=12, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(2,2):
{
  LOAD, [SOUTH, RED] -> [SOUTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=0)
{
  NOT, [WEST, RED] -> [SOUTH, RED], [EAST, RED], [WEST, RED] (t=14, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=14, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=14, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=15, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=2)
{
  FMUL_FADD, [$0], [WEST, RED], [SOUTH, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=3)
{
  STORE, [$0], [$1] (t=17, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [EAST, RED] -> [$1] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(3,2):
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [WEST, RED] (t=13, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$1], [$2] -> [$1] (t=14, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=14, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [SOUTH, RED] -> [$2] (t=2, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [WEST, RED] (t=16, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=3)
{
  MEMSET, [$0], [$1], [NORTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=5)
{
  GRANT_ONCE, [#0] -> [$1], [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(0,3):
{
  ZEXT, [$0] -> [$0] (t=13, inv_iters=1)
} (idx_per_ii=0)
{
  SHL, [$0], [#3] -> [EAST, RED] (t=14, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [$0], [SOUTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)

PE(1,3):
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=15, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_ONCE, [#0] -> [SOUTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GRANT_ONCE, [arg0] -> [WEST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)

PE(2,3):
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=16, inv_iters=1)
} (idx_per_ii=3)

PE(3,3):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=4)

