# Compiled II: 12

PE(0,0):
{
  CONSTANT, [arg0] -> [$0] (t=0, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  ICMP_SGT, [$0], [#0] -> [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  GRANT_ONCE, [$0] -> [NORTH, RED], [$3], [$2], [EAST, RED], [$0], [$1] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  DATA_MOV, [$3] -> [$0] (t=3, inv_iters=0)
  DATA_MOV, [$2] -> [NORTH, RED] (t=3, inv_iters=0)
  DATA_MOV, [$0] -> [EAST, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  DATA_MOV, [$0] -> [EAST, RED] (t=4, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=4)
{
  RETURN_VOID, [$0] (t=17, inv_iters=1)
} (idx_per_ii=5)
{
  NOT, [$1] -> [EAST, RED], [$0], [NORTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [$0] -> [NORTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(1,0):
{
  NOT, [$2] -> [$2], [$3] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$1], [$0] -> [NORTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$2], [$3] -> [EAST, RED] (t=14, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=3, inv_iters=0)
  SHL, [NORTH, RED], [#3] -> [NORTH, RED], [WEST, RED] (t=15, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=5, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$1] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [NORTH, RED], [EAST, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  ZEXT, [$0] -> [NORTH, RED] (t=7, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$2] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [$1], [WEST, RED] -> [$0], [$1] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  ICMP_SGT, [$0], [#0] -> [EAST, RED], [$0], [WEST, RED], [NORTH, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)

PE(2,0):
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [NORTH, RED], [$1] (t=12, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  NOT, [$0] -> [$0], [$1] (t=13, inv_iters=1)
  DATA_MOV, [$1] -> [NORTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$0], [$1] -> [NORTH, RED] (t=14, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=3, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=15, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [$0], [$1] (t=4, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  ICMP_SGT, [$0], [#0] -> [$2], [$0], [WEST, RED], [NORTH, RED] (t=5, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$3] (t=17, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [$2] -> [WEST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$1], [$0] -> [$0] (t=7, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$1] (t=19, inv_iters=1)
} (idx_per_ii=7)
{
  ZEXT, [$0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [$0], [$3] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI_START, [$0], [$1] -> [NORTH, RED], [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(3,0):
{
  LOAD, [NORTH, RED] -> [NORTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_ONCE, [arg1] -> [WEST, RED], [$0] (t=2, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$1] (t=14, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [$0] -> [WEST, RED] (t=3, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [$1] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=4)
{
  STORE, [NORTH, RED], [$0] (t=20, inv_iters=1)
} (idx_per_ii=8)

PE(0,1):
{
  GEP, [arg5], [$0] -> [$0] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  ZEXT, [$1] -> [$2] (t=13, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [$0] -> [NORTH, RED] (t=14, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_ONCE, [arg0] -> [$0] (t=3, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$0], [$1] -> [$1], [EAST, RED] (t=4, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=4, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=4)
{
  SHL, [$2], [#3] -> [$3] (t=17, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$2] (t=17, inv_iters=1)
} (idx_per_ii=5)
{
  MEMSET, [$0], [$2], [$3] (t=18, inv_iters=1)
} (idx_per_ii=6)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=11, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)

PE(1,1):
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [NORTH, RED] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$1], [EAST, RED] -> [$1] (t=13, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  ZEXT, [SOUTH, RED] -> [SOUTH, RED] (t=14, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=14, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=14, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [$3] -> [WEST, RED] (t=15, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=16, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=16, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=5, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=5, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$2] (t=17, inv_iters=1)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [EAST, RED] (t=6, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$3] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI_START, [SOUTH, RED], [$2] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [$0], [$1] -> [EAST, RED], [$1], [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(2,1):
{
  NOT, [$0] -> [$0], [$1], [EAST, RED], [NORTH, RED], [WEST, RED], [$8], [$5] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$2], [$0] -> [$1] (t=13, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [EAST, RED] (t=13, inv_iters=1)
  DATA_MOV, [$1] -> [WEST, RED] (t=13, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  PHI_START, [$3], [$6] -> [$3], [$0] (t=14, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=14, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$2] (t=14, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [$4] -> [EAST, RED] (t=15, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=15, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$2], [NORTH, RED] -> [SOUTH, RED] (t=16, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$3], [$5] -> [$6] (t=17, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=6, inv_iters=0)
  GRANT_PREDICATE, [$7], [$8] -> [SOUTH, RED] (t=18, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [$2] (t=18, inv_iters=1)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [$0], [NORTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  PHI_START, [$0], [$2] -> [$3], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [$0], [$1] -> [$1], [EAST, RED], [WEST, RED], [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ADD, [$0], [#1] -> [$0], [$2] (t=10, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=10, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$1] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  ICMP_EQ, [$0], [$1] -> [$0], [NORTH, RED], [SOUTH, RED], [$4], [WEST, RED] (t=11, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$7] (t=11, inv_iters=0)
} (idx_per_ii=11)

PE(3,1):
{
  GEP, [arg3], [$0] -> [SOUTH, RED], [WEST, RED] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=13, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [WEST, RED] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=14, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=14, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [WEST, RED] (t=17, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)

PE(0,2):
{
  GRANT_ONCE, [#0] -> [EAST, RED], [$0] (t=12, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=13, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [$0] -> [$2] (t=14, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=14, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$3] (t=14, inv_iters=1)
} (idx_per_ii=2)
{
  LOAD, [EAST, RED] -> [$0] (t=15, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=15, inv_iters=1)
} (idx_per_ii=3)
{
  FMUL_FADD, [$0], [$1], [$2] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=5, inv_iters=0)
  STORE, [$0], [$3] (t=17, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=11, inv_iters=0)
} (idx_per_ii=11)

PE(1,2):
{
  PHI_START, [EAST, RED], [$0] -> [WEST, RED], [$0], [$3] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_ONCE, [arg3] -> [SOUTH, RED] (t=13, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$1] (t=13, inv_iters=1)
  DATA_MOV, [$0] -> [WEST, RED] (t=13, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$1], [$2] -> [SOUTH, RED] (t=14, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$1] (t=14, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$2] (t=14, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=14, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$1], [$2] -> [$2] (t=15, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=15, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$1] (t=15, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [SOUTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=5, inv_iters=0)
  GRANT_PREDICATE, [$3], [$1] -> [$0] (t=17, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$1] (t=17, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$3] (t=17, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [WEST, RED] -> [$2] (t=6, inv_iters=0)
  MEMSET, [$1], [$2], [$3] (t=18, inv_iters=1)
} (idx_per_ii=6)

PE(2,2):
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [$0] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  ADD, [$0], [#1] -> [$0], [$3] (t=13, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  ICMP_EQ, [$0], [SOUTH, RED] -> [$0], [$1], [$2] (t=14, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=14, inv_iters=1)
} (idx_per_ii=2)
{
  NOT, [$0] -> [$0], [EAST, RED], [WEST, RED], [SOUTH, RED] (t=15, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$6] (t=15, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=4, inv_iters=0)
  GRANT_PREDICATE, [$1], [$2] -> [$4] (t=16, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=16, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$2] (t=16, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$3], [$0] -> [$0] (t=17, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=17, inv_iters=1)
} (idx_per_ii=5)
{
  PHI, [$1], [$2], [$4] -> [EAST, RED] (t=18, inv_iters=1)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$5], [$6] -> [$2] (t=19, inv_iters=1)
} (idx_per_ii=7)
{
  PHI_START, [SOUTH, RED], [$0] -> [$1], [NORTH, RED], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [$0], [$2] -> [EAST, RED], [$5], [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GEP, [arg4], [$1] -> [NORTH, RED], [WEST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)

PE(3,2):
{
  GEP, [arg2], [$0], [$1] -> [SOUTH, RED], [WEST, RED] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_ONCE, [#0] -> [WEST, RED] (t=3, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=4)
{
  FMUL_FADD, [NORTH, RED], [SOUTH, RED], [$0] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=6)
{
  RETURN_VOID, [WEST, RED] (t=19, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=11, inv_iters=0)
} (idx_per_ii=11)

PE(0,3):
{
  GRANT_ONCE, [arg4] -> [$0] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [$0] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [EAST, RED] -> [EAST, RED] (t=14, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [EAST, RED] (t=15, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=3)
{
  STORE, [#0.000000], [$0] (t=16, inv_iters=1)
} (idx_per_ii=4)

PE(1,3):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=14, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=15, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=4)

PE(2,3):
{
  PHI_START, [$0], [$1] -> [WEST, RED], [$0] (t=12, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=13, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=16, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [$1] (t=17, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GEP, [arg6], [$0] -> [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)

PE(3,3):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=5)

