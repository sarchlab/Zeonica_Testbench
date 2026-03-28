# Compiled II: 15

PE(0,0):
{
  PHI_START, [$0], [$8] -> [EAST, RED], [NORTH, RED], [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  ADD, [$0], [#1] -> [EAST, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_ONCE, [arg0] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  ICMP_ULT, [$0], [#4] -> [NORTH, RED], [EAST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  ZEXT, [$0] -> [$8], [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  AND, [$0], [#2147483644] -> [$0] (t=7, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  PHI_START, [$0], [$9] -> [EAST, RED] (t=8, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  AND, [$8], [#3] -> [$0], [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ICMP_EQ, [$0], [#0] -> [NORTH, RED], [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  NOT, [$0] -> [$0], [EAST, RED] (t=11, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$8] (t=26, inv_iters=1)
} (idx_per_ii=11)
{
  CTRL_MOV, [EAST, RED] -> [$9] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(1,0):
{
  CONSTANT, [arg0] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  ICMP_SGT, [$0], [#0] -> [$0], [EAST, RED] (t=1, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$8] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_ONCE, [$0] -> [WEST, RED], [NORTH, RED], [$16] (t=2, inv_iters=0)
  DATA_MOV, [$8] -> [EAST, RED] (t=17, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$3] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [$16] -> [EAST, RED] (t=3, inv_iters=0)
  GRANT_PREDICATE, [$2], [$10] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  PHI_START, [$0], [$11] -> [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [$9] (t=5, inv_iters=0)
  LOAD, [NORTH, RED] -> [$16] (t=20, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=6, inv_iters=0)
  LOAD, [$0] -> [WEST, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  MUL, [EAST, RED], [$16] -> [WEST, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [NORTH, RED] -> [$8] (t=9, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=9, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [WEST, RED] -> [$2] (t=10, inv_iters=0)
  GRANT_PREDICATE, [$3], [NORTH, RED] -> [WEST, RED] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  CTRL_MOV, [NORTH, RED] -> [$11] (t=26, inv_iters=1)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [WEST, RED] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$10] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  OR, [$8], [#1] -> [EAST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$1], [$9] -> [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(2,0):
{
  GEP, [arg3], [$0] -> [EAST, RED] (t=15, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [$0] -> [NORTH, RED] (t=16, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=2, inv_iters=0)
  LOAD, [$0] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [arg1], [$8] -> [EAST, RED] (t=18, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=4, inv_iters=0)
  GEP, [arg1], [$0] -> [WEST, RED] (t=19, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  LOAD, [$0] -> [NORTH, RED] (t=20, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  LOAD, [$0] -> [WEST, RED] (t=21, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=21, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$9] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  LOAD, [$0] -> [$8] (t=22, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=22, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  LOAD, [$0] -> [EAST, RED] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  ADD, [$8], [NORTH, RED] -> [$0] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  STORE, [$0], [$9] (t=26, inv_iters=1)
} (idx_per_ii=11)
{
  GEP, [arg2], [WEST, RED] -> [EAST, RED] (t=14, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$8] (t=14, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(3,0):
{
  LOAD, [WEST, RED] -> [NORTH, RED] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [WEST, RED] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  NOT, [$0] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=3, inv_iters=0)
  GRANT_ONCE, [$0] -> [NORTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  NOT, [$1] -> [NORTH, RED] (t=19, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$1] (t=19, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$8] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=5, inv_iters=0)
  LOAD, [$1] -> [$16] (t=20, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$9] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  LOAD, [$8] -> [WEST, RED] (t=21, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$8] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  LOAD, [$9] -> [$2] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  MUL, [$2], [$16] -> [$2] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  ADD, [WEST, RED], [$2] -> [$2] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  STORE, [$2], [$8] (t=25, inv_iters=1)
} (idx_per_ii=10)

PE(0,1):
{
  LOAD, [$0] -> [$1] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [arg2], [SOUTH, RED] -> [NORTH, RED] (t=16, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  GEP, [arg3], [$0] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [$1] -> [NORTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  LOAD, [$0] -> [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  NOT, [SOUTH, RED] -> [SOUTH, RED], [$0] (t=5, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$8] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [EAST, RED] (t=6, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$2], [$2] -> [$9] (t=22, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$1] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [$1], [$1] -> [$16] (t=23, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=23, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$1] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [EAST, RED] -> [$1] (t=9, inv_iters=0)
  PHI, [$1], [$9], [$16] -> [$9] (t=24, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$0], [$8] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  DATA_MOV, [SOUTH, RED] -> [$2] (t=11, inv_iters=0)
  RETURN_VOID, [$9] (t=26, inv_iters=1)
} (idx_per_ii=11)
{
  PHI, [$0], [EAST, RED] -> [SOUTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [arg2], [$1] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(1,1):
{
  PHI, [SOUTH, RED], [$0] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [$16] -> [$0] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  PHI_START, [$0], [$10] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [$8] (t=3, inv_iters=0)
  ADD, [$0], [#1] -> [$2], [NORTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_ONCE, [#0] -> [$0] (t=4, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$0], [$8] -> [WEST, RED], [SOUTH, RED] (t=5, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$8] (t=20, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  ICMP_EQ, [$2], [$8] -> [NORTH, RED], [WEST, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  PHI_START, [WEST, RED], [$1] -> [EAST, RED] (t=7, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=7, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=7, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  PHI_START, [$0], [NORTH, RED] -> [EAST, RED], [WEST, RED], [NORTH, RED], [SOUTH, RED], [$9], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ADD, [$0], [#4] -> [EAST, RED], [$8] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=9, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  ICMP_EQ, [$0], [SOUTH, RED] -> [$0] (t=10, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [SOUTH, RED] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  NOT, [$0] -> [EAST, RED], [SOUTH, RED], [NORTH, RED] (t=11, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$10] (t=26, inv_iters=1)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$8], [$0] -> [WEST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  OR, [$9], [#3] -> [NORTH, RED], [EAST, RED] (t=13, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$8] (t=13, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$16] (t=13, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$1] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$8], [$0] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(2,1):
{
  GEP, [arg3], [$0] -> [SOUTH, RED] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  SEXT, [SOUTH, RED] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [SOUTH, RED] -> [$0] (t=18, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [arg5], [$0] -> [$0] (t=19, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=20, inv_iters=1)
  DATA_MOV, [$0] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=21, inv_iters=1)
  DATA_MOV, [$0] -> [SOUTH, RED] (t=21, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  ADD, [WEST, RED], [#4] -> [WEST, RED], [$0] (t=8, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$8] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=9, inv_iters=0)
  MUL, [$8], [NORTH, RED] -> [SOUTH, RED] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [WEST, RED] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GEP, [arg2], [WEST, RED] -> [SOUTH, RED] (t=14, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(3,1):
{
  SEXT, [SOUTH, RED] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  SEXT, [SOUTH, RED] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [arg4], [WEST, RED] -> [SOUTH, RED] (t=18, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=19, inv_iters=1)
  DATA_MOV, [$0] -> [SOUTH, RED] (t=19, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$8] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [WEST, RED] (t=20, inv_iters=1)
  DATA_MOV, [$8] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)

PE(0,2):
{
  GEP, [arg3], [$0] -> [$8] (t=15, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [$0] -> [EAST, RED] (t=16, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [SOUTH, RED] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  LOAD, [$8] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  SEXT, [$0] -> [EAST, RED] (t=19, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  GEP, [arg4], [$0] -> [NORTH, RED] (t=20, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  SEXT, [$0] -> [$0] (t=21, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$8] (t=21, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$16] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  GEP, [arg5], [$0] -> [NORTH, RED], [$9] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  LOAD, [$8] -> [$8] (t=23, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  MUL, [$0], [SOUTH, RED] -> [NORTH, RED] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  ADD, [$8], [SOUTH, RED] -> [$0] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  STORE, [$0], [$16] (t=26, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=26, inv_iters=1)
} (idx_per_ii=11)
{
  STORE, [$0], [$9] (t=27, inv_iters=1)
} (idx_per_ii=12)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(1,2):
{
  GEP, [arg3], [$1] -> [WEST, RED] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  SEXT, [WEST, RED] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [arg1], [$0] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [SOUTH, RED] -> [$2] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  GEP, [arg5], [WEST, RED] -> [WEST, RED] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [$3], [$8] -> [$9] (t=21, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  NOT, [SOUTH, RED] -> [$0], [$8] (t=22, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=8, inv_iters=0)
  MUL, [NORTH, RED], [EAST, RED] -> [NORTH, RED] (t=23, inv_iters=1)
  DATA_MOV, [$0] -> [SOUTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=9, inv_iters=0)
  GRANT_PREDICATE, [$1], [$8] -> [SOUTH, RED] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$2], [$8] -> [SOUTH, RED] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  PHI_START, [$0], [$9] -> [$3], [SOUTH, RED] (t=12, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$8] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  OR, [$1], [#2] -> [$0], [WEST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [arg2], [$0] -> [WEST, RED] (t=14, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(2,2):
{
  GEP, [arg1], [$0] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [arg4], [WEST, RED] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$1], [$8] -> [WEST, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [SOUTH, RED] -> [$8] (t=13, inv_iters=0)
} (idx_per_ii=13)

PE(3,2):
{
  GEP, [arg4], [SOUTH, RED] -> [SOUTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [arg5], [SOUTH, RED] -> [WEST, RED], [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=3)

PE(0,3):
{
  LOAD, [SOUTH, RED] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [SOUTH, RED] -> [$0] (t=18, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$8] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [arg4], [$0] -> [$0] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  LOAD, [$8] -> [EAST, RED] (t=20, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$1] (t=20, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$8] (t=20, inv_iters=1)
} (idx_per_ii=5)
{
  LOAD, [SOUTH, RED] -> [EAST, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  LOAD, [$0] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  LOAD, [$1] -> [EAST, RED] (t=23, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=23, inv_iters=1)
} (idx_per_ii=8)
{
  LOAD, [$0] -> [$0] (t=24, inv_iters=1)
} (idx_per_ii=9)
{
  ADD, [$0], [SOUTH, RED] -> [SOUTH, RED] (t=25, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=25, inv_iters=1)
} (idx_per_ii=10)
{
  STORE, [$0], [$8] (t=26, inv_iters=1)
} (idx_per_ii=11)

PE(1,3):
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [arg1], [$0] -> [WEST, RED] (t=17, inv_iters=1)
} (idx_per_ii=2)
{
  SEXT, [WEST, RED] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=3)
{
  GEP, [arg5], [$0] -> [WEST, RED] (t=19, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=21, inv_iters=1)
} (idx_per_ii=6)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)
{
  ADD, [WEST, RED], [SOUTH, RED] -> [WEST, RED] (t=24, inv_iters=1)
} (idx_per_ii=9)

PE(2,3):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=7)

