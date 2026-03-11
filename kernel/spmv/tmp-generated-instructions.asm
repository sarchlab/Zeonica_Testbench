# Compiled II: 15

PE(0,0):
{
  GRANT_PREDICATE, [$0], [$1] -> [NORTH, RED] (t=15, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [$0] -> [EAST, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_ONCE, [arg0] -> [$0] (t=2, inv_iters=0)
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
  AND, [$1], [#3] -> [$0], [$1] (t=9, inv_iters=0)
  DATA_MOV, [$0] -> [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ICMP_EQ, [$0], [#0] -> [NORTH, RED], [$0] (t=10, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  NOT, [$0] -> [NORTH, RED], [$1], [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [$0] -> [EAST, RED] (t=12, inv_iters=0)
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
  ICMP_SGT, [$0], [#0] -> [$0], [EAST, RED] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  GRANT_ONCE, [$0] -> [WEST, RED], [NORTH, RED], [$1] (t=2, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [$1] -> [NORTH, RED] (t=3, inv_iters=0)
  SEXT, [$0] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [$0] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=5, inv_iters=0)
  LOAD, [$0] -> [EAST, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=6, inv_iters=0)
  GRANT_PREDICATE, [$2], [$3] -> [EAST, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$4], [$5] -> [NORTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [NORTH, RED] -> [$2] (t=9, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$0], [$1] -> [NORTH, RED] (t=10, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$4] (t=10, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [WEST, RED] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  OR, [$2], [#3] -> [$1], [$0], [EAST, RED] (t=13, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$2] (t=13, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$3] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [$0] -> [WEST, RED] (t=14, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=14, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$5] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(2,0):
{
  GEP, [$0] -> [EAST, RED] (t=15, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$3] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$1], [$2] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=2, inv_iters=0)
  PHI_START, [$0], [$4] -> [NORTH, RED], [$1] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [$3] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  MUL, [WEST, RED], [$0] -> [EAST, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$1], [NORTH, RED] -> [$4] (t=22, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$1] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  PHI, [$0], [$1], [NORTH, RED] -> [$0] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  RETURN_VOID, [$0] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [WEST, RED] -> [$2] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(3,0):
{
  LOAD, [WEST, RED] -> [$1] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  NOT, [$0] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=3, inv_iters=0)
  SEXT, [$1] -> [$1] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [$1] -> [$1], [$2] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  LOAD, [$1] -> [$1] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  ADD, [$1], [WEST, RED] -> [$1] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  STORE, [$1], [$2] (t=23, inv_iters=1)
} (idx_per_ii=8)

PE(0,1):
{
  GEP, [$3] -> [NORTH, RED] (t=15, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [$0] -> [NORTH, RED] (t=16, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  PHI_START, [$0], [$5] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  NOT, [$4] -> [EAST, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [EAST, RED] -> [EAST, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  NOT, [SOUTH, RED] -> [SOUTH, RED], [$0] (t=5, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$4] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [$1], [EAST, RED], [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=7, inv_iters=0)
  DATA_MOV, [$0] -> [EAST, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  CTRL_MOV, [EAST, RED] -> [$0] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [EAST, RED] -> [$3] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [EAST, RED] -> [$2] (t=11, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI_START, [$1], [$0] -> [EAST, RED], [$1] (t=12, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=12, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$5] (t=27, inv_iters=1)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$1], [$2] -> [SOUTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [EAST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(1,1):
{
  PHI_START, [WEST, RED], [$6] -> [$1], [EAST, RED], [NORTH, RED], [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  ADD, [$0], [#1] -> [$0] (t=16, inv_iters=1)
  DATA_MOV, [$1] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [$0] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=3, inv_iters=0)
  ADD, [WEST, RED], [#1] -> [EAST, RED], [WEST, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_ONCE, [#0] -> [$0] (t=4, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=4, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED], [$0], [WEST, RED] (t=5, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [$0] -> [WEST, RED] (t=6, inv_iters=0)
  GRANT_PREDICATE, [$4], [$5] -> [$0] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  PHI_START, [WEST, RED], [$2] -> [EAST, RED] (t=7, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=22, inv_iters=1)
  CTRL_MOV, [$0] -> [WEST, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  PHI_START, [WEST, RED], [SOUTH, RED] -> [$1], [$3], [WEST, RED], [NORTH, RED], [EAST, RED], [SOUTH, RED], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ADD, [$0], [#4] -> [SOUTH, RED], [$1] (t=9, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=9, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$6] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  ICMP_EQ, [$0], [SOUTH, RED] -> [$0], [$2], [WEST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  NOT, [$0] -> [NORTH, RED], [EAST, RED], [SOUTH, RED], [$5] (t=11, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=11, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [WEST, RED] (t=26, inv_iters=1)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$1], [$2] -> [$1] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  PHI, [$0], [$1] -> [WEST, RED] (t=13, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=13, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$4] (t=13, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$2] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [$3] -> [WEST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(2,1):
{
  GEP, [$1] -> [EAST, RED] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [WEST, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [$0] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [$0] -> [$0] (t=18, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [$0] -> [NORTH, RED] (t=19, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  ICMP_EQ, [$0], [$1] -> [$0], [$1], [$2] (t=20, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=20, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  NOT, [$0] -> [WEST, RED], [$4], [SOUTH, RED] (t=21, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$3] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$1], [$2] -> [$0] (t=22, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  ADD, [WEST, RED], [#4] -> [WEST, RED], [$0] (t=8, inv_iters=0)
  DATA_MOV, [$0] -> [SOUTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=9, inv_iters=0)
  GRANT_PREDICATE, [$3], [$4] -> [WEST, RED] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [WEST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  OR, [$1], [#2] -> [NORTH, RED], [$0], [$1] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [$0] -> [EAST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(3,1):
{
  LOAD, [WEST, RED] -> [NORTH, RED] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [WEST, RED] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  GEP, [$0] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_ONCE, [SOUTH, RED] -> [$1] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [WEST, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$1], [WEST, RED] -> [WEST, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)

PE(0,2):
{
  LOAD, [SOUTH, RED] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  SEXT, [SOUTH, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [$0] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [EAST, RED] (t=19, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  STORE, [EAST, RED], [$0] (t=23, inv_iters=1)
} (idx_per_ii=8)

PE(1,2):
{
  GEP, [$1] -> [EAST, RED] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [SOUTH, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [$0] -> [EAST, RED] (t=17, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [$0] -> [$0] (t=18, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [NORTH, RED] -> [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  LOAD, [$0] -> [$0] (t=20, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  MUL, [EAST, RED], [$0] -> [EAST, RED] (t=21, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  ADD, [$0], [EAST, RED] -> [WEST, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [$1], [SOUTH, RED] -> [SOUTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [SOUTH, RED] -> [SOUTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  OR, [$0], [#1] -> [NORTH, RED], [$0], [$1] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [$0] -> [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(2,2):
{
  LOAD, [WEST, RED] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  GEP, [$0] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [WEST, RED] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [$0] -> [NORTH, RED], [$1] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  LOAD, [SOUTH, RED] -> [WEST, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  MUL, [WEST, RED], [SOUTH, RED] -> [WEST, RED] (t=21, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  ADD, [$0], [WEST, RED] -> [$0] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  STORE, [$0], [$1] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(3,2):
{
  SEXT, [SOUTH, RED] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  SEXT, [SOUTH, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [$0] -> [NORTH, RED], [$2] (t=18, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [$1] (t=19, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  MUL, [$0], [$1] -> [NORTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  STORE, [NORTH, RED], [$2] (t=22, inv_iters=1)
} (idx_per_ii=7)

PE(0,3):
{
  SEXT, [SOUTH, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [$0] -> [$0], [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [EAST, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)

PE(1,3):
{
  LOAD, [SOUTH, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  SEXT, [$0] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  GEP, [$1] -> [$1] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [$0] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [$1] -> [$0] (t=19, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$2] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  MUL, [SOUTH, RED], [$0] -> [$1] (t=20, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=20, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  ADD, [$0], [$1] -> [$0] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  STORE, [$0], [$2] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(2,3):
{
  SEXT, [SOUTH, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [$0] -> [$0], [WEST, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [WEST, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  LOAD, [SOUTH, RED] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)

PE(3,3):
{
  GEP, [SOUTH, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  LOAD, [$0] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [SOUTH, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  ADD, [$0], [SOUTH, RED] -> [SOUTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)

