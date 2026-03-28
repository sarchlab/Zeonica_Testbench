# Compiled II: 17

PE(0,0):
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$2], [$8] -> [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  CTRL_MOV, [EAST, RED] -> [NORTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_ONCE, [#0] -> [NORTH, RED] (t=4, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$1] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  DATA_MOV, [NORTH, RED] -> [$8] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_ONCE, [arg0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$0], [$8] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ZEXT, [$0] -> [NORTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  DATA_MOV, [NORTH, RED] -> [$8] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [NORTH, RED] -> [$2] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  NOT, [$1] -> [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_ONCE, [$0] -> [$0] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(1,0):
{
  DATA_MOV, [WEST, RED] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$1], [$8] -> [WEST, RED] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  PHI, [$0], [NORTH, RED] -> [$0] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  RETURN_VOID, [$0] (t=22, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [NORTH, RED] -> [$8] (t=13, inv_iters=0)
} (idx_per_ii=13)

PE(2,0):
{
  LOAD, [NORTH, RED] -> [$0] (t=18, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$9] (t=18, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$1], [$8] -> [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  ADD, [$0], [NORTH, RED] -> [$0] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  STORE, [$0], [$9] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  DATA_MOV, [NORTH, RED] -> [$8] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  LOAD, [NORTH, RED] -> [NORTH, RED] (t=16, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$1] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(0,1):
{
  CONSTANT, [arg1] -> [$0] (t=1, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$8] (t=18, inv_iters=1)
} (idx_per_ii=1)
{
  ICMP_SGT, [$0], [#0] -> [$0] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  AND, [NORTH, RED], [$0] -> [$0], [SOUTH, RED] (t=3, inv_iters=0)
  CTRL_MOV, [SOUTH, RED] -> [$12] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_ONCE, [$0] -> [SOUTH, RED], [EAST, RED], [$0], [$10] (t=4, inv_iters=0)
  CTRL_MOV, [SOUTH, RED] -> [$16] (t=21, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [$24] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [$0], [EAST, RED] (t=5, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$17] (t=22, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [$11] (t=22, inv_iters=1)
} (idx_per_ii=5)
{
  PHI_START, [$0], [$17] -> [EAST, RED], [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI_START, [$0], [$8] -> [EAST, RED], [$0] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$9] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI_START, [$0], [$16] -> [$1], [EAST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  PHI_START, [SOUTH, RED], [$11] -> [$0] (t=11, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$8] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI_START, [$0], [$24] -> [$0] (t=12, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  PHI_START, [$0], [$12] -> [SOUTH, RED], [$0] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$0], [$8] -> [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GEP, [arg5], [$1], [$9] -> [NORTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  NOT, [$10] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(1,1):
{
  GRANT_PREDICATE, [$1], [$9] -> [WEST, RED] (t=17, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$9] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  ICMP_EQ, [$0], [$9] -> [$0] (t=18, inv_iters=1)
} (idx_per_ii=1)
{
  NOT, [$0] -> [EAST, RED], [$9], [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [$0] -> [SOUTH, RED] (t=20, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$0], [$9] -> [WEST, RED] (t=21, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [$1] (t=21, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [NORTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [EAST, RED], [WEST, RED] -> [$0] (t=5, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  ZEXT, [$0] -> [NORTH, RED] (t=6, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI_START, [WEST, RED], [$1] -> [EAST, RED], [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  PHI_START, [$0], [$8] -> [WEST, RED], [EAST, RED], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ADD, [$0], [#1] -> [$0], [$9] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ICMP_EQ, [$0], [NORTH, RED] -> [$0], [$8], [NORTH, RED], [EAST, RED], [WEST, RED] (t=10, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$16] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  NOT, [$0] -> [$16], [NORTH, RED], [WEST, RED] (t=11, inv_iters=0)
  DATA_MOV, [$16] -> [EAST, RED] (t=11, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=11, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$0], [$8] -> [$0] (t=12, inv_iters=0)
  DATA_MOV, [$16] -> [EAST, RED] (t=12, inv_iters=0)
  DATA_MOV, [$16] -> [SOUTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  ADD, [$0], [#1] -> [NORTH, RED], [$1] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$9], [$16] -> [$8] (t=14, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  ADD, [$0], [#1] -> [$0], [EAST, RED] (t=16, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$9] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(2,1):
{
  GEP, [arg3], [$17], [$2] -> [SOUTH, RED] (t=17, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=17, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$10] (t=17, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$1] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [$8] -> [NORTH, RED], [$0] (t=18, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$0], [$9] -> [WEST, RED] (t=19, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$1], [WEST, RED] -> [WEST, RED] (t=20, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=20, inv_iters=1)
  CTRL_MOV, [SOUTH, RED] -> [$18] (t=20, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [$11] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_ONCE, [arg1] -> [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$10], [$0] -> [$8] (t=22, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [$16] (t=22, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=6, inv_iters=0)
  GRANT_PREDICATE, [$17], [$3] -> [$9] (t=23, inv_iters=1)
} (idx_per_ii=6)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  DATA_MOV, [WEST, RED] -> [$2] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI_START, [$0], [$8] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  PHI_START, [$0], [$16] -> [$16], [$0] (t=11, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$8] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI_START, [$0], [$9] -> [$17], [$0] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$9] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$0], [$8] -> [NORTH, RED], [WEST, RED] (t=13, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=13, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$3] (t=13, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [arg4], [$16], [$9] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  PHI_START, [$0], [$18] -> [SOUTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  PHI_START, [$1], [$11] -> [EAST, RED], [$0] (t=16, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$9] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(3,1):
{
  DATA_MOV, [WEST, RED] -> [$0] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [$8] -> [WEST, RED] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [$8] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(0,2):
{
  CONSTANT, [arg2] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  ICMP_SGT, [$0], [#0] -> [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  AND, [EAST, RED], [$0] -> [SOUTH, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$1], [$8] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [SOUTH, RED], [EAST, RED] -> [EAST, RED] (t=15, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  LOAD, [SOUTH, RED] -> [EAST, RED] (t=16, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$8] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(1,2):
{
  CONSTANT, [arg0] -> [$0] (t=0, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=17, inv_iters=1)
} (idx_per_ii=0)
{
  ICMP_SGT, [$0], [#0] -> [WEST, RED] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$10], [$1] -> [$9] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$2], [SOUTH, RED] -> [WEST, RED] (t=20, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=20, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$11], [$0] -> [EAST, RED] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  CTRL_MOV, [SOUTH, RED] -> [$0] (t=22, inv_iters=1)
} (idx_per_ii=5)
{
  PHI_START, [SOUTH, RED], [$0] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  PHI_START, [$0], [$9] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [$0], [$8] -> [SOUTH, RED], [$8], [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [$10], [EAST, RED] (t=11, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [$9], [EAST, RED] (t=12, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$8], [$0] -> [$8] (t=13, inv_iters=0)
  DATA_MOV, [$0] -> [EAST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  ICMP_EQ, [SOUTH, RED], [$9] -> [$0], [SOUTH, RED], [WEST, RED], [EAST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  NOT, [$0] -> [SOUTH, RED], [EAST, RED], [$1], [WEST, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [$9], [$0] -> [$11] (t=16, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=16, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$2] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(2,2):
{
  MUL, [WEST, RED], [SOUTH, RED] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [WEST, RED] (t=19, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$2], [$9] -> [$10] (t=20, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$3], [$16] -> [SOUTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=4)
{
  CTRL_MOV, [WEST, RED] -> [$9] (t=22, inv_iters=1)
} (idx_per_ii=5)
{
  GRANT_ONCE, [arg2] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  ZEXT, [$0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [$0], [$9] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI_START, [$0], [$8] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  PHI_START, [$0], [$10] -> [$2], [WEST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [WEST, RED] -> [$9] (t=14, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$3] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [$8] (t=15, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [$1], [WEST, RED] -> [$8] (t=16, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$16] (t=16, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=16, inv_iters=0)
  DATA_MOV, [$8] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)

