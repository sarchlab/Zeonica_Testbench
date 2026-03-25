# Compiled II: 14

PE(0,0):
{
  CONSTANT, [arg0] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  ICMP_SGT, [$0], [#0] -> [$0], [EAST, RED] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  GRANT_ONCE, [$0] -> [EAST, RED], [NORTH, RED], [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  DATA_MOV, [$0] -> [EAST, RED] (t=3, inv_iters=0)
  GRANT_PREDICATE, [$2], [$3] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  NOT, [EAST, RED] -> [$0], [NORTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [$0] (t=6, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$1] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  AND, [$0], [#2147483644] -> [NORTH, RED] (t=7, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [NORTH, RED] -> [$3] (t=22, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [EAST, RED] -> [$2] (t=23, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=23, inv_iters=1)
} (idx_per_ii=9)
{
  DATA_MOV, [EAST, RED] -> [$2] (t=10, inv_iters=0)
  MUL, [$2], [NORTH, RED] -> [$4] (t=24, inv_iters=1)
} (idx_per_ii=10)
{
  CTRL_MOV, [EAST, RED] -> [NORTH, RED] (t=25, inv_iters=1)
} (idx_per_ii=11)
{
  DATA_MOV, [EAST, RED] -> [$3] (t=12, inv_iters=0)
  ADD, [$3], [$4] -> [EAST, RED] (t=26, inv_iters=1)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$1], [$0] -> [NORTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)

PE(1,0):
{
  GEP, [arg3], [NORTH, RED] -> [NORTH, RED] (t=15, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_ONCE, [arg0] -> [$0] (t=2, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [$1], [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  ICMP_ULT, [$0], [#4] -> [NORTH, RED], [EAST, RED], [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  ZEXT, [$1] -> [$0], [WEST, RED] (t=5, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=6, inv_iters=0)
  GRANT_PREDICATE, [$2], [$3] -> [EAST, RED] (t=20, inv_iters=1)
} (idx_per_ii=6)
{
  LOAD, [NORTH, RED] -> [EAST, RED] (t=21, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=22, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=22, inv_iters=1)
} (idx_per_ii=8)
{
  AND, [$0], [#3] -> [$0], [WEST, RED] (t=9, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [NORTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ICMP_EQ, [$0], [#0] -> [$2], [$3], [$0] (t=10, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [NORTH, RED] (t=10, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$1] (t=24, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [WEST, RED] (t=24, inv_iters=1)
} (idx_per_ii=10)
{
  NOT, [$0] -> [NORTH, RED], [$0], [WEST, RED] (t=11, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [$0] -> [NORTH, RED] (t=12, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=26, inv_iters=1)
} (idx_per_ii=12)
{
  STORE, [WEST, RED], [$1] (t=27, inv_iters=1)
} (idx_per_ii=13)

PE(2,0):
{
  LOAD, [NORTH, RED] -> [EAST, RED] (t=15, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [NORTH, RED] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=3, inv_iters=0)
  LOAD, [NORTH, RED] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [NORTH, RED] -> [EAST, RED] (t=18, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [WEST, RED] (t=5, inv_iters=0)
  LOAD, [NORTH, RED] -> [$1] (t=19, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=6, inv_iters=0)
  LOAD, [NORTH, RED] -> [$0] (t=20, inv_iters=1)
} (idx_per_ii=6)
{
  LOAD, [NORTH, RED] -> [WEST, RED] (t=21, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=7)
{
  LOAD, [NORTH, RED] -> [$2] (t=22, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$3] (t=22, inv_iters=1)
} (idx_per_ii=8)
{
  MUL, [$0], [$1] -> [NORTH, RED] (t=23, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$1] (t=23, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [WEST, RED] (t=23, inv_iters=1)
} (idx_per_ii=9)
{
  MUL, [$2], [$3] -> [$0] (t=24, inv_iters=1)
} (idx_per_ii=10)
{
  ADD, [EAST, RED], [$0] -> [EAST, RED] (t=25, inv_iters=1)
} (idx_per_ii=11)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  STORE, [NORTH, RED], [$1] (t=27, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=27, inv_iters=1)
} (idx_per_ii=13)

PE(3,0):
{
  DATA_MOV, [WEST, RED] -> [$1] (t=28, inv_iters=2)
} (idx_per_ii=0)
{
  STORE, [NORTH, RED], [$1] (t=29, inv_iters=2)
} (idx_per_ii=1)
{
  SEXT, [WEST, RED] -> [$1] (t=16, inv_iters=1)
} (idx_per_ii=2)
{
  NOT, [$0] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=4, inv_iters=0)
  GEP, [arg4], [$1] -> [$3] (t=18, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$2] (t=18, inv_iters=1)
} (idx_per_ii=4)
{
  SEXT, [WEST, RED] -> [$1] (t=19, inv_iters=1)
} (idx_per_ii=5)
{
  GEP, [arg5], [$1] -> [$4], [$5] (t=20, inv_iters=1)
} (idx_per_ii=6)
{
  LOAD, [$2] -> [$2] (t=21, inv_iters=1)
} (idx_per_ii=7)
{
  LOAD, [$3] -> [$1] (t=22, inv_iters=1)
} (idx_per_ii=8)
{
  MUL, [$1], [$2] -> [NORTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=9)
{
  LOAD, [$4] -> [WEST, RED] (t=24, inv_iters=1)
} (idx_per_ii=10)
{
  STORE, [WEST, RED], [$5] (t=26, inv_iters=1)
} (idx_per_ii=12)

PE(0,1):
{
  GRANT_PREDICATE, [$0], [$2] -> [$1] (t=14, inv_iters=1)
  DATA_MOV, [$1] -> [EAST, RED] (t=14, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=14, inv_iters=1)
} (idx_per_ii=0)
{
  PHI, [$0], [$1] -> [EAST, RED] (t=15, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=3, inv_iters=0)
  LOAD, [EAST, RED] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  PHI_START, [SOUTH, RED], [$5] -> [EAST, RED], [NORTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [$1], [SOUTH, RED], [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [$4], [EAST, RED], [$0] (t=6, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$2] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  DATA_MOV, [$0] -> [EAST, RED] (t=7, inv_iters=0)
  LOAD, [EAST, RED] -> [SOUTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=7)
{
  PHI_START, [SOUTH, RED], [$3] -> [EAST, RED], [$0] (t=8, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [EAST, RED] -> [EAST, RED] (t=9, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$1], [$2] -> [NORTH, RED] (t=10, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$1] (t=10, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=24, inv_iters=1)
} (idx_per_ii=10)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [$3] (t=11, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$5] (t=25, inv_iters=1)
} (idx_per_ii=11)
{
  PHI_START, [$4], [SOUTH, RED] -> [EAST, RED], [$0] (t=12, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$2] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  OR, [$1], [#2] -> [$1], [NORTH, RED], [EAST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)

PE(1,1):
{
  PHI_START, [$1], [$3] -> [NORTH, RED], [EAST, RED], [$3], [$1] (t=14, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=14, inv_iters=1)
} (idx_per_ii=0)
{
  ADD, [$1], [#1] -> [$1] (t=15, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=15, inv_iters=1)
  DATA_MOV, [$3] -> [EAST, RED] (t=15, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [WEST, RED], [$2] -> [$1] (t=16, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=16, inv_iters=1)
  DATA_MOV, [$1] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=2)
{
  PHI_START, [$1], [$4] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_ONCE, [#0] -> [WEST, RED] (t=4, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$1] (t=18, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=5, inv_iters=0)
  SEXT, [$1] -> [$1] (t=19, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=5)
{
  GEP, [arg5], [$1] -> [WEST, RED], [$1] (t=20, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=20, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [EAST, RED] (t=20, inv_iters=1)
} (idx_per_ii=6)
{
  PHI_START, [WEST, RED], [$0] -> [EAST, RED] (t=7, inv_iters=0)
  DATA_MOV, [$1] -> [WEST, RED] (t=21, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=7)
{
  PHI_START, [WEST, RED], [EAST, RED] -> [$2], [SOUTH, RED], [$1], [EAST, RED], [$0], [WEST, RED], [NORTH, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ICMP_EQ, [EAST, RED], [WEST, RED] -> [$0], [NORTH, RED], [EAST, RED] (t=9, inv_iters=0)
  DATA_MOV, [$2] -> [$1] (t=9, inv_iters=0)
  DATA_MOV, [$1] -> [SOUTH, RED] (t=9, inv_iters=0)
  DATA_MOV, [$0] -> [WEST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  NOT, [$0] -> [SOUTH, RED], [$1], [WEST, RED], [$3] (t=10, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=10, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=10, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=10, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$4] (t=24, inv_iters=1)
} (idx_per_ii=10)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0] (t=11, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=11, inv_iters=0)
  DATA_MOV, [$3] -> [EAST, RED] (t=11, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=11, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=25, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [$3] (t=25, inv_iters=1)
} (idx_per_ii=11)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=12, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [NORTH, RED], [$1] -> [$1] (t=13, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=13, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$2] (t=13, inv_iters=0)
} (idx_per_ii=13)

PE(2,1):
{
  GEP, [arg2], [$0] -> [SOUTH, RED] (t=14, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=14, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [arg2], [WEST, RED] -> [$0] (t=15, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=15, inv_iters=1)
} (idx_per_ii=1)
{
  GEP, [arg3], [WEST, RED] -> [$0] (t=16, inv_iters=1)
  DATA_MOV, [$0] -> [SOUTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [SOUTH, RED] -> [EAST, RED] (t=17, inv_iters=1)
  DATA_MOV, [$0] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  SEXT, [SOUTH, RED] -> [$0] (t=18, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=4)
{
  GEP, [arg4], [$0] -> [WEST, RED] (t=19, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=6)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=7, inv_iters=0)
  GRANT_PREDICATE, [$1], [$2] -> [WEST, RED] (t=21, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=7)
{
  ADD, [WEST, RED], [#4] -> [WEST, RED], [$0] (t=8, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=22, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=9, inv_iters=0)
  DATA_MOV, [$0] -> [WEST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [WEST, RED] -> [WEST, RED] (t=10, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=24, inv_iters=1)
} (idx_per_ii=10)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=11, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$1] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=12, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=26, inv_iters=1)
} (idx_per_ii=12)
{
  OR, [$0], [#1] -> [EAST, RED], [$0], [NORTH, RED] (t=13, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$2] (t=13, inv_iters=0)
} (idx_per_ii=13)

PE(3,1):
{
  DATA_MOV, [WEST, RED] -> [$0] (t=14, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=28, inv_iters=2)
} (idx_per_ii=0)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=15, inv_iters=1)
} (idx_per_ii=1)
{
  GEP, [arg1], [$0] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [arg4], [WEST, RED] -> [WEST, RED] (t=18, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_ONCE, [$0] -> [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [$1], [$2] -> [WEST, RED] (t=21, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=24, inv_iters=1)
} (idx_per_ii=10)
{
  DATA_MOV, [WEST, RED] -> [$2] (t=13, inv_iters=0)
} (idx_per_ii=13)

PE(0,2):
{
  GEP, [arg2], [SOUTH, RED] -> [NORTH, RED] (t=14, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=14, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [arg3], [$0] -> [NORTH, RED] (t=15, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [$0] -> [NORTH, RED] (t=16, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=2)
{
  LOAD, [$0] -> [NORTH, RED] (t=17, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [$0] (t=18, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=4)
{
  SEXT, [$0] -> [$0] (t=19, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=19, inv_iters=1)
} (idx_per_ii=5)
{
  GEP, [arg5], [$0] -> [NORTH, RED], [EAST, RED] (t=20, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=20, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$2] (t=20, inv_iters=1)
} (idx_per_ii=6)
{
  LOAD, [$0] -> [$0] (t=21, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$1] (t=21, inv_iters=1)
} (idx_per_ii=7)
{
  MUL, [$0], [$1] -> [NORTH, RED] (t=22, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=8)
{
  LOAD, [$2] -> [EAST, RED] (t=23, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=9)
{
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED] (t=24, inv_iters=1)
} (idx_per_ii=10)
{
  PHI, [SOUTH, RED], [EAST, RED] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)

PE(1,2):
{
  GEP, [arg2], [$1] -> [WEST, RED] (t=14, inv_iters=1)
  DATA_MOV, [$3] -> [EAST, RED] (t=14, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [arg3], [$0] -> [WEST, RED] (t=15, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=15, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=16, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [arg1], [$2] -> [WEST, RED] (t=17, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  ADD, [SOUTH, RED], [#1] -> [$0], [NORTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=4)
{
  GEP, [arg5], [NORTH, RED] -> [WEST, RED], [$1] (t=19, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=5)
{
  ICMP_EQ, [$0], [SOUTH, RED] -> [$0], [$1], [$2] (t=20, inv_iters=1)
  DATA_MOV, [$1] -> [SOUTH, RED] (t=20, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=20, inv_iters=1)
} (idx_per_ii=6)
{
  NOT, [$0] -> [$0], [NORTH, RED], [EAST, RED] (t=21, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [WEST, RED] (t=21, inv_iters=1)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [$1], [$2] -> [EAST, RED] (t=22, inv_iters=1)
  DATA_MOV, [$0] -> [NORTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=8)
{
  ADD, [SOUTH, RED], [#4] -> [EAST, RED], [$0] (t=9, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [SOUTH, RED] (t=23, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [WEST, RED] (t=23, inv_iters=1)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [WEST, RED] (t=10, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=24, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [SOUTH, RED] (t=24, inv_iters=1)
} (idx_per_ii=10)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  OR, [$0], [#3] -> [$3], [EAST, RED], [WEST, RED] (t=13, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$2] (t=13, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=13, inv_iters=0)
} (idx_per_ii=13)

PE(2,2):
{
  GEP, [arg2], [WEST, RED] -> [SOUTH, RED] (t=14, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=14, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [arg3], [$0] -> [WEST, RED] (t=15, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=16, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [arg1], [$0] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  NOT, [$1] -> [EAST, RED] (t=18, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=18, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=18, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=21, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$2] (t=21, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=8, inv_iters=0)
  GRANT_PREDICATE, [$0], [WEST, RED] -> [WEST, RED] (t=22, inv_iters=1)
} (idx_per_ii=8)
{
  PHI, [$2], [SOUTH, RED], [WEST, RED] -> [EAST, RED] (t=23, inv_iters=1)
} (idx_per_ii=9)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  ADD, [WEST, RED], [SOUTH, RED] -> [SOUTH, RED] (t=25, inv_iters=1)
} (idx_per_ii=11)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)

PE(3,2):
{
  GEP, [arg1], [WEST, RED] -> [WEST, RED] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [WEST, RED] (t=20, inv_iters=1)
} (idx_per_ii=6)
{
  RETURN_VOID, [WEST, RED] (t=24, inv_iters=1)
} (idx_per_ii=10)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=25, inv_iters=1)
} (idx_per_ii=11)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=27, inv_iters=1)
} (idx_per_ii=13)

PE(0,3):
{
  LOAD, [SOUTH, RED] -> [EAST, RED] (t=15, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [SOUTH, RED] -> [EAST, RED] (t=16, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [SOUTH, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  SEXT, [SOUTH, RED] -> [EAST, RED] (t=18, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$1] (t=18, inv_iters=1)
} (idx_per_ii=4)
{
  GEP, [arg4], [$0] -> [SOUTH, RED] (t=19, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=5)
{
  LOAD, [$0] -> [SOUTH, RED] (t=20, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=20, inv_iters=1)
} (idx_per_ii=6)
{
  LOAD, [$1] -> [SOUTH, RED] (t=21, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$2] (t=21, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=21, inv_iters=1)
} (idx_per_ii=7)
{
  LOAD, [$0] -> [$0] (t=22, inv_iters=1)
} (idx_per_ii=8)
{
  LOAD, [$1] -> [EAST, RED] (t=23, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=23, inv_iters=1)
} (idx_per_ii=9)
{
  ADD, [$0], [$1] -> [$0] (t=24, inv_iters=1)
} (idx_per_ii=10)
{
  STORE, [$0], [$2] (t=25, inv_iters=1)
} (idx_per_ii=11)

PE(1,3):
{
  SEXT, [WEST, RED] -> [EAST, RED] (t=16, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [arg1], [SOUTH, RED] -> [WEST, RED] (t=17, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  SEXT, [$0] -> [SOUTH, RED] (t=18, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=18, inv_iters=1)
} (idx_per_ii=4)
{
  GEP, [arg5], [WEST, RED] -> [WEST, RED], [$2] (t=19, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [$2] -> [WEST, RED] (t=20, inv_iters=1)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$1], [SOUTH, RED] -> [SOUTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=9)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=24, inv_iters=1)
} (idx_per_ii=10)

PE(2,3):
{
  GEP, [arg4], [WEST, RED] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=25, inv_iters=1)
} (idx_per_ii=11)

PE(3,3):
{
  ADD, [WEST, RED], [SOUTH, RED] -> [SOUTH, RED] (t=26, inv_iters=1)
} (idx_per_ii=12)

