# Compiled II: 15

PE(0,0):
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=15, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [$0] -> [EAST, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_ONCE, [arg0] -> [$0] (t=2, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [EAST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [$1], [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  ICMP_ULT, [$0], [#4] -> [EAST, RED], [$3], [NORTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  ZEXT, [$1] -> [$1], [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  AND, [$0], [#2147483644] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  PHI_START, [$0], [$2] -> [EAST, RED], [$0] (t=8, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$2] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  AND, [$1], [#3] -> [$0], [NORTH, RED] (t=9, inv_iters=0)
  DATA_MOV, [$0] -> [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ICMP_EQ, [$0], [#0] -> [EAST, RED], [$1], [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  NOT, [$0] -> [NORTH, RED], [$1], [$0] (t=11, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [$0] -> [NORTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$2], [$3] -> [$0] (t=13, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$2] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  PHI, [$0], [NORTH, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(1,0):
{
  CONSTANT, [arg0] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  ICMP_SGT, [$0], [#0] -> [$0], [WEST, RED] (t=1, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_ONCE, [$0] -> [WEST, RED], [NORTH, RED], [$3] (t=2, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=3, inv_iters=0)
  SEXT, [$0] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [$0] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=5, inv_iters=0)
  NOT, [$3] -> [NORTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=6, inv_iters=0)
  LOAD, [$0] -> [EAST, RED] (t=21, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$4], [$5] -> [EAST, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [NORTH, RED] -> [$2] (t=9, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$0], [$1] -> [NORTH, RED] (t=10, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  DATA_MOV, [WEST, RED] -> [$4] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [WEST, RED] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$5] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  OR, [$2], [#3] -> [NORTH, RED], [$0], [EAST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [$0] -> [WEST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(2,0):
{
  GEP, [$0] -> [EAST, RED] (t=15, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [$0] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [NORTH, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [$0] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [$0] -> [$1] (t=19, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  LOAD, [$0] -> [WEST, RED] (t=20, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=20, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$4] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  LOAD, [$0] -> [EAST, RED] (t=21, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$2] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  LOAD, [$1] -> [WEST, RED] (t=22, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=22, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$3] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  MUL, [$0], [$2] -> [$2] (t=23, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=23, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$1] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  PHI, [$0], [$1], [$3] -> [NORTH, RED] (t=24, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  ADD, [$0], [$2] -> [$0] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  STORE, [$0], [$4] (t=26, inv_iters=1)
} (idx_per_ii=11)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(3,0):
{
  LOAD, [WEST, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [NORTH, RED] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [$0] -> [$0] (t=18, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$1] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [$0] -> [$2], [WEST, RED] (t=19, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  LOAD, [$1] -> [WEST, RED] (t=20, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$1] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  LOAD, [$0] -> [$0] (t=21, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$4] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  MUL, [WEST, RED], [$0] -> [$3] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  LOAD, [$2] -> [WEST, RED] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  LOAD, [$1] -> [$0] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  ADD, [$0], [$3] -> [$0] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  STORE, [$0], [$4] (t=26, inv_iters=1)
} (idx_per_ii=11)

PE(0,1):
{
  GEP, [$3] -> [NORTH, RED] (t=15, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [$0] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$4], [$1] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [$0] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [$0] -> [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  NOT, [SOUTH, RED] -> [SOUTH, RED], [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [$1], [EAST, RED], [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=7, inv_iters=0)
  DATA_MOV, [$0] -> [EAST, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [$5], [$6] -> [$0] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [EAST, RED] -> [$3] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [SOUTH, RED] -> [$4] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  DATA_MOV, [EAST, RED] -> [$2] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI_START, [$1], [$0] -> [$5], [$1] (t=12, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$6] (t=12, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$1], [$2] -> [SOUTH, RED] (t=13, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [EAST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(1,1):
{
  PHI_START, [WEST, RED], [$6] -> [$1], [EAST, RED], [NORTH, RED], [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  ADD, [$0], [#1] -> [EAST, RED] (t=16, inv_iters=1)
  DATA_MOV, [$1] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  PHI_START, [SOUTH, RED], [$5] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=3, inv_iters=0)
  PHI_START, [WEST, RED], [$4] -> [EAST, RED], [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_ONCE, [#0] -> [$0] (t=4, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=4, inv_iters=0)
  DATA_MOV, [$0] -> [EAST, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED], [$0], [WEST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [$0] -> [WEST, RED] (t=6, inv_iters=0)
  GRANT_PREDICATE, [NORTH, RED], [SOUTH, RED] -> [EAST, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  PHI_START, [WEST, RED], [$2] -> [EAST, RED] (t=7, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=22, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [$0] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  PHI_START, [WEST, RED], [$0] -> [$1], [$3], [WEST, RED], [NORTH, RED], [EAST, RED], [SOUTH, RED], [$0] (t=8, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$5] (t=23, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [$4] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  ADD, [$0], [#4] -> [$2], [$1] (t=9, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=9, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  ICMP_EQ, [$0], [SOUTH, RED] -> [$0], [$2], [WEST, RED] (t=10, inv_iters=0)
  DATA_MOV, [$2] -> [NORTH, RED] (t=10, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$6] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  NOT, [$0] -> [NORTH, RED], [EAST, RED], [SOUTH, RED], [WEST, RED] (t=11, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$1], [$2] -> [$1] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  PHI, [$0], [$1] -> [WEST, RED] (t=13, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$2] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [$3] -> [WEST, RED] (t=14, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(2,1):
{
  GEP, [$1] -> [EAST, RED] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [WEST, RED] -> [SOUTH, RED] (t=16, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  SEXT, [SOUTH, RED] -> [NORTH, RED] (t=17, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$4] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  ADD, [WEST, RED], [#1] -> [$0], [NORTH, RED] (t=18, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  ICMP_EQ, [$0], [WEST, RED] -> [$0], [$1], [$2] (t=19, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  NOT, [$0] -> [$5], [NORTH, RED], [$3] (t=20, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [$1], [$2] -> [SOUTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$0], [$3] -> [WEST, RED] (t=22, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  ADD, [WEST, RED], [#4] -> [WEST, RED], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=9, inv_iters=0)
  GRANT_PREDICATE, [$4], [$5] -> [WEST, RED] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=10, inv_iters=0)
  RETURN_VOID, [SOUTH, RED] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [WEST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  OR, [$1], [#2] -> [EAST, RED], [$0], [$1] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [$0] -> [SOUTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(3,1):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  GEP, [WEST, RED] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [SOUTH, RED] -> [$0] (t=18, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [$0] -> [SOUTH, RED], [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [$0] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(0,2):
{
  LOAD, [EAST, RED] -> [NORTH, RED] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [SOUTH, RED] -> [NORTH, RED] (t=16, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [$0] -> [EAST, RED] (t=17, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  LOAD, [$0] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  SEXT, [$0] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  GEP, [$0] -> [$3], [$5] (t=20, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=20, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$1] (t=20, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$2] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  LOAD, [$0] -> [EAST, RED] (t=21, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$4] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  LOAD, [$1] -> [EAST, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  LOAD, [$2] -> [NORTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  LOAD, [$3] -> [$0] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  STORE, [EAST, RED], [$4] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  ADD, [$0], [EAST, RED] -> [$0] (t=26, inv_iters=1)
} (idx_per_ii=11)
{
  STORE, [$0], [$5] (t=27, inv_iters=1)
} (idx_per_ii=12)

PE(1,2):
{
  GEP, [$1] -> [WEST, RED] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [SOUTH, RED] -> [WEST, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  NOT, [$2] -> [EAST, RED] (t=17, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [WEST, RED] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [$0] -> [WEST, RED], [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [SOUTH, RED] -> [$2] (t=5, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [$3], [$4] -> [SOUTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=22, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  MUL, [$0], [SOUTH, RED] -> [$1] (t=23, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=9, inv_iters=0)
  ADD, [$0], [$1] -> [WEST, RED] (t=24, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$1] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  MUL, [SOUTH, RED], [$1] -> [WEST, RED] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  DATA_MOV, [SOUTH, RED] -> [$3] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [SOUTH, RED] -> [$4] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  OR, [$0], [#1] -> [NORTH, RED], [$0], [$1] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [$0] -> [WEST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(2,2):
{
  GEP, [$0] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [SOUTH, RED] -> [SOUTH, RED] (t=18, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_ONCE, [$0] -> [WEST, RED] (t=19, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [WEST, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)

PE(3,2):
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [$0] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)

PE(0,3):
{
  SEXT, [SOUTH, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  SEXT, [SOUTH, RED] -> [$1] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [$0] -> [$2] (t=18, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [$1] -> [SOUTH, RED], [$3] (t=19, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$1] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  LOAD, [$0] -> [$3] (t=20, inv_iters=1)
  DATA_MOV, [$3] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  LOAD, [$2] -> [$0] (t=21, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$2] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  LOAD, [$1] -> [EAST, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  MUL, [$0], [$3] -> [$0] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  ADD, [SOUTH, RED], [$0] -> [$0] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  STORE, [$0], [$2] (t=25, inv_iters=1)
} (idx_per_ii=10)

PE(1,3):
{
  GEP, [$0] -> [WEST, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [SOUTH, RED] -> [WEST, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)

