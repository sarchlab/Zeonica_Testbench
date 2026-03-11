# Compiled II: 17

PE(0,0):
{
  LOAD, [NORTH, RED] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$1], [$3] -> [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  CTRL_MOV, [EAST, RED] -> [NORTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_ONCE, [#0] -> [NORTH, RED] (t=4, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$2] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_ONCE, [arg0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ZEXT, [$0] -> [NORTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [NORTH, RED] -> [$3] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  NOT, [$2] -> [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_ONCE, [$0] -> [NORTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(1,0):
{
  LOAD, [$0] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=18, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$2], [$3] -> [WEST, RED] (t=19, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  PHI, [$0], [NORTH, RED] -> [$0] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  RETURN_VOID, [$0] (t=22, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=12, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [NORTH, RED] -> [$2] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [NORTH, RED] -> [$3] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GEP, [$0], [$1] -> [$0] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(2,0):
{
  DATA_MOV, [WEST, RED] -> [$1] (t=18, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$2] (t=18, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  FMUL_FADD, [$0], [$1], [NORTH, RED] -> [$0] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  STORE, [$0], [$2] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)

PE(0,1):
{
  GRANT_PREDICATE, [SOUTH, RED], [NORTH, RED] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  CONSTANT, [arg1] -> [$0] (t=1, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$1] (t=18, inv_iters=1)
} (idx_per_ii=1)
{
  ICMP_SGT, [$0], [#0] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  AND, [NORTH, RED], [$0] -> [$0], [SOUTH, RED] (t=3, inv_iters=0)
  CTRL_MOV, [SOUTH, RED] -> [$4] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_ONCE, [$0] -> [SOUTH, RED], [NORTH, RED], [EAST, RED], [$0], [$2] (t=4, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$6] (t=21, inv_iters=1)
  CTRL_MOV, [SOUTH, RED] -> [$5] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [$0], [EAST, RED] (t=5, inv_iters=0)
  DATA_MOV, [$2] -> [NORTH, RED] (t=5, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$3] (t=22, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [$2] (t=22, inv_iters=1)
} (idx_per_ii=5)
{
  PHI_START, [$0], [$3] -> [EAST, RED], [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  CTRL_MOV, [NORTH, RED] -> [$7] (t=24, inv_iters=1)
} (idx_per_ii=7)
{
  PHI_START, [$0], [$1] -> [$3], [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI_START, [$0], [$5] -> [SOUTH, RED], [$0], [EAST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  PHI_START, [SOUTH, RED], [$2] -> [$0] (t=11, inv_iters=0)
  DATA_MOV, [$0] -> [EAST, RED] (t=11, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$1] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI_START, [$0], [$7] -> [$0] (t=12, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  PHI_START, [$0], [$4] -> [SOUTH, RED], [$0] (t=13, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$2] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED], [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GEP, [$2], [$3] -> [$0] (t=15, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  PHI_START, [$0], [$6] -> [SOUTH, RED], [NORTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(1,1):
{
  GRANT_PREDICATE, [$4], [$0] -> [WEST, RED] (t=17, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  ICMP_EQ, [$2], [$0] -> [$0], [$2], [$3] (t=18, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=1)
{
  NOT, [$0] -> [$4], [$5], [$0], [EAST, RED], [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$2], [$3] -> [SOUTH, RED] (t=20, inv_iters=1)
  DATA_MOV, [$4] -> [EAST, RED] (t=20, inv_iters=1)
  DATA_MOV, [$0] -> [NORTH, RED] (t=20, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [$2] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [NORTH, RED], [$5] -> [WEST, RED] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [EAST, RED], [WEST, RED] -> [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  ZEXT, [$0] -> [NORTH, RED] (t=6, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI_START, [WEST, RED], [$2] -> [EAST, RED], [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  PHI_START, [$0], [$1] -> [SOUTH, RED], [EAST, RED], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ADD, [$0], [#1] -> [$0], [$2] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ICMP_EQ, [$0], [NORTH, RED] -> [$0], [$1], [EAST, RED], [$3], [WEST, RED], [SOUTH, RED], [NORTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  NOT, [$0] -> [$3], [$4], [$1], [SOUTH, RED], [NORTH, RED], [$5], [WEST, RED] (t=11, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=11, inv_iters=0)
  DATA_MOV, [$3] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0] (t=12, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=12, inv_iters=0)
  DATA_MOV, [$5] -> [NORTH, RED] (t=12, inv_iters=0)
  DATA_MOV, [$4] -> [EAST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  ADD, [$0], [#1] -> [NORTH, RED], [$4] (t=13, inv_iters=0)
  DATA_MOV, [$4] -> [WEST, RED] (t=13, inv_iters=0)
  DATA_MOV, [$1] -> [SOUTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$2], [$3] -> [$1] (t=14, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [$0] (t=15, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  ADD, [$0], [#1] -> [$2], [EAST, RED] (t=16, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$0] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(2,1):
{
  GEP, [$3], [$4] -> [NORTH, RED], [SOUTH, RED] (t=17, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$3] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0], [NORTH, RED] (t=18, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$1] (t=18, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED] (t=19, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$2], [WEST, RED] -> [NORTH, RED] (t=20, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [$5] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_ONCE, [arg1] -> [WEST, RED] (t=4, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$3], [$0] -> [$1] (t=22, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [$8] (t=22, inv_iters=1)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [$6], [$7] -> [$3] (t=23, inv_iters=1)
} (idx_per_ii=6)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [WEST, RED] -> [$2] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  DATA_MOV, [WEST, RED] -> [$4] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI_START, [$0], [$1] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  PHI_START, [$0], [$8] -> [WEST, RED], [$0] (t=11, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI_START, [$0], [$3] -> [$3], [$6], [$0] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$1] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$0], [$1] -> [NORTH, RED], [WEST, RED] (t=13, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=13, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [SOUTH, RED] -> [$7] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  PHI_START, [$2], [$5] -> [EAST, RED], [$0] (t=16, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$2] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(3,1):
{
  DATA_MOV, [WEST, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(0,2):
{
  CONSTANT, [arg2] -> [$0] (t=0, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  ICMP_SGT, [$0], [#0] -> [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  AND, [EAST, RED], [$0] -> [SOUTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$1], [$2] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=6, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [SOUTH, RED], [EAST, RED] -> [EAST, RED], [$1] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  NOT, [$0] -> [SOUTH, RED] (t=16, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$2] (t=16, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(1,2):
{
  CONSTANT, [arg0] -> [$0] (t=0, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$3] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  ICMP_SGT, [$0], [#0] -> [WEST, RED] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$4], [$5] -> [$2] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$3], [SOUTH, RED] -> [WEST, RED] (t=20, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$6], [SOUTH, RED] -> [$0] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$7], [$8] -> [WEST, RED] (t=22, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI_START, [SOUTH, RED], [$0] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  PHI_START, [$0], [$2] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [$0], [$1] -> [SOUTH, RED], [$1], [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [$4], [$2] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$1], [SOUTH, RED] -> [$1] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=13, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  ICMP_EQ, [SOUTH, RED], [$0] -> [$0], [SOUTH, RED], [WEST, RED], [NORTH, RED], [$3], [EAST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  NOT, [$0] -> [SOUTH, RED], [NORTH, RED], [$0], [$5], [EAST, RED], [$8] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [$2], [$3] -> [$6] (t=16, inv_iters=0)
  DATA_MOV, [$0] -> [EAST, RED] (t=16, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$7] (t=16, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(2,2):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=17, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [SOUTH, RED] -> [SOUTH, RED] (t=18, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$5] (t=18, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [WEST, RED] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$2], [$3] -> [$3] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$4], [$5] -> [SOUTH, RED] (t=21, inv_iters=1)
  CTRL_MOV, [SOUTH, RED] -> [$2] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_ONCE, [arg2] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  ZEXT, [$0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [$0], [$2] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI_START, [$0], [$1] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  PHI_START, [$0], [$3] -> [$2], [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [WEST, RED], [$1], [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [WEST, RED] -> [$3] (t=14, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$4] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [SOUTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [$1], [WEST, RED] -> [$1] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(1,3):
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(2,3):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)

