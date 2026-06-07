# Compiled II: 20

PE(0,0):
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)

PE(1,0):
{
  DATA_MOV, [EAST, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  DATA_MOV, [NORTH, RED] -> [$8] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GRANT_PREDICATE, [$0], [$8] -> [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  PHI, [$0], [NORTH, RED] -> [$0] (t=18, inv_iters=0)
} (idx_per_ii=18)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [EAST, RED] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(2,0):
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=20, inv_iters=1)
  CTRL_MOV, [WEST, RED] -> [EAST, RED] (t=20, inv_iters=1)
} (idx_per_ii=0)
{
  STORE, [NORTH, RED], [$0] (t=21, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=3, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  DATA_MOV, [NORTH, RED] -> [$10] (t=10, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  LOAD, [EAST, RED] -> [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  PHI, [$8], [$0] -> [$9], [WEST, RED], [$1] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=14, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$8] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  LOAD, [NORTH, RED] -> [$0] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  MUL, [$0], [$8] -> [NORTH, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  MUL, [$0], [$9] -> [NORTH, RED] (t=18, inv_iters=0)
} (idx_per_ii=18)
{
  GRANT_PREDICATE, [$1], [$10] -> [$8] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(3,0):
{
  GRANT_ONCE, [#0] -> [$0] (t=1, inv_iters=0)
  CTRL_MOV, [WEST, RED] -> [$8] (t=21, inv_iters=1)
} (idx_per_ii=1)
{
  PHI_START, [$0], [$8] -> [WEST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  GEP, [arg2], [NORTH, RED] -> [WEST, RED] (t=11, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$8] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  LOAD, [NORTH, RED] -> [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  PHI, [$9], [$0] -> [WEST, RED], [$0] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$0], [$8] -> [$9] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  RETURN_VOID, [NORTH, RED] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(0,1):
{
  STORE, [EAST, RED], [$1] (t=21, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI, [$8], [$0] -> [$0] (t=11, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$16] (t=11, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$8] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI, [$9], [$0] -> [$9], [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$0], [$8] -> [$0] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=15, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$8] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  MUL, [NORTH, RED], [SOUTH, RED] -> [EAST, RED] (t=16, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$1] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [NORTH, RED], [$16] -> [NORTH, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  GRANT_PREDICATE, [$9], [$16] -> [$9] (t=18, inv_iters=0)
} (idx_per_ii=18)
{
  GRANT_PREDICATE, [$0], [$8] -> [$8] (t=19, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(1,1):
{
  SUB, [NORTH, RED], [$0] -> [WEST, RED] (t=20, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$2], [$11] -> [$11] (t=21, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$16], [$3] -> [$12] (t=22, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [NORTH, RED] -> [$8] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GRANT_ONCE, [#1] -> [$0] (t=4, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  ZEXT, [NORTH, RED] -> [NORTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI_START, [$0], [$12] -> [$0], [NORTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$0], [$8] -> [$0], [WEST, RED] (t=7, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  ZEXT, [$0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI, [$9], [$0] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI, [$11], [$0] -> [$2], [EAST, RED] (t=10, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$11] (t=10, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=10, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  PHI, [$10], [EAST, RED] -> [$1], [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  ADD, [EAST, RED], [#1] -> [$0], [$10] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  ICMP_EQ, [$0], [EAST, RED] -> [$0], [WEST, RED], [NORTH, RED], [EAST, RED], [$16] (t=13, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$8] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  NOT, [$0] -> [$0], [EAST, RED], [WEST, RED], [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GRANT_PREDICATE, [$8], [$0] -> [$9] (t=15, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [$10], [$0] -> [EAST, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [NORTH, RED], [$16] -> [SOUTH, RED] (t=17, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  NOT, [EAST, RED] -> [EAST, RED], [WEST, RED], [$3], [SOUTH, RED] (t=18, inv_iters=0)
} (idx_per_ii=18)
{
  GRANT_PREDICATE, [$1], [$11] -> [$10] (t=19, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=19, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$16] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(2,1):
{
  ADD, [NORTH, RED], [$0] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$10], [$2] -> [$9] (t=21, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$12], [$16] -> [NORTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [SOUTH, RED], [NORTH, RED] -> [NORTH, RED], [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  PHI, [$8], [$0] -> [EAST, RED], [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  SHL, [$0], [#1] -> [WEST, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  ADD, [NORTH, RED], [#1] -> [NORTH, RED], [$1] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  PHI, [$9], [$0] -> [$10], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  NOT, [NORTH, RED] -> [$16], [NORTH, RED], [SOUTH, RED], [EAST, RED], [$2], [WEST, RED] (t=9, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$8] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI, [$11], [NORTH, RED] -> [WEST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  GRANT_PREDICATE, [$0], [$8] -> [WEST, RED] (t=11, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=11, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$9] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$0], [$8] -> [WEST, RED] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$1], [$16] -> [NORTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [NORTH, RED], [WEST, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  PHI, [$9], [$0] -> [$0] (t=15, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=15, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=15, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=15, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$8] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  ADD, [$0], [#1] -> [$0], [$12] (t=16, inv_iters=0)
  DATA_MOV, [$8] -> [NORTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  ICMP_EQ, [$0], [#8] -> [WEST, RED], [EAST, RED] (t=17, inv_iters=0)
  CTRL_MOV, [WEST, RED] -> [$8] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  ADD, [WEST, RED], [SOUTH, RED] -> [WEST, RED], [NORTH, RED] (t=18, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$0] (t=18, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$11] (t=18, inv_iters=0)
} (idx_per_ii=18)
{
  SUB, [SOUTH, RED], [$0] -> [NORTH, RED], [$0] (t=19, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=19, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=19, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$16] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(3,1):
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  ADD, [$0], [NORTH, RED] -> [SOUTH, RED], [$0] (t=10, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  GEP, [arg3], [$0] -> [SOUTH, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  DATA_MOV, [WEST, RED] -> [$8] (t=16, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [$0], [$8] -> [WEST, RED] (t=17, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$0] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  GRANT_PREDICATE, [WEST, RED], [WEST, RED] -> [SOUTH, RED] (t=18, inv_iters=0)
} (idx_per_ii=18)
{
  GRANT_PREDICATE, [$0], [$8] -> [NORTH, RED] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(0,2):
{
  GRANT_PREDICATE, [EAST, RED], [SOUTH, RED] -> [EAST, RED] (t=20, inv_iters=1)
} (idx_per_ii=0)
{
  STORE, [EAST, RED], [$16] (t=22, inv_iters=1)
} (idx_per_ii=2)
{
  ZEXT, [EAST, RED] -> [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI, [$8], [$0] -> [EAST, RED], [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=10, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$8] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  LOAD, [EAST, RED] -> [EAST, RED], [SOUTH, RED] (t=15, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  PHI, [$9], [$0] -> [SOUTH, RED], [$0] (t=16, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$16] (t=16, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$10] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  LOAD, [NORTH, RED] -> [EAST, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  GRANT_PREDICATE, [$0], [$8] -> [$0] (t=18, inv_iters=0)
  CTRL_MOV, [SOUTH, RED] -> [$9] (t=18, inv_iters=0)
} (idx_per_ii=18)
{
  GRANT_PREDICATE, [$0], [$10] -> [$8] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(1,2):
{
  GRANT_ONCE, [#128] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  PHI_START, [$0], [WEST, RED] -> [$0], [$8] (t=1, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=21, inv_iters=1)
} (idx_per_ii=1)
{
  ICMP_SGT, [$0], [#0] -> [EAST, RED], [$0], [SOUTH, RED] (t=2, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$10] (t=22, inv_iters=1)
} (idx_per_ii=2)
{
  NOT, [$0] -> [NORTH, RED], [$1], [EAST, RED], [SOUTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$8], [$0] -> [WEST, RED], [SOUTH, RED], [NORTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$8], [$1] -> [$1] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI, [$2], [SOUTH, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI, [$9], [$0] -> [EAST, RED] (t=7, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=7, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=7, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$9] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  MUL, [SOUTH, RED], [$0] -> [$0], [NORTH, RED] (t=8, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$8] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  CAST_TRUNC, [$0] -> [$0] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ADD, [$8], [$0] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  ZEXT, [$0] -> [$0] (t=11, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI, [$10], [$0] -> [$0], [EAST, RED] (t=12, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$10] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  ADD, [$9], [$0] -> [EAST, RED], [$0] (t=13, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$9] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [arg1], [$0] -> [WEST, RED], [SOUTH, RED] (t=14, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$16] (t=14, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$8] (t=14, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GRANT_PREDICATE, [$0], [$8] -> [EAST, RED] (t=15, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=15, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=15, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [$10], [$0] -> [$2] (t=16, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=16, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [$16], [$8] -> [$8] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  PHI, [$1], [$8] -> [$0] (t=18, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=18, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=18, inv_iters=0)
} (idx_per_ii=18)
{
  DIV, [$0], [#2] -> [WEST, RED] (t=19, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(2,2):
{
  SUB, [$1], [SOUTH, RED] -> [WEST, RED] (t=20, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$2], [$18] -> [WEST, RED] (t=21, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=3, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=3, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$8] (t=3, inv_iters=0)
  CTRL_MOV, [SOUTH, RED] -> [$16] (t=23, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=4, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$9] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  PHI, [$0], [SOUTH, RED] -> [NORTH, RED], [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI, [$10], [$0] -> [WEST, RED], [NORTH, RED], [SOUTH, RED] (t=6, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI_START, [$0], [$16] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  ICMP_EQ, [SOUTH, RED], [WEST, RED] -> [SOUTH, RED], [WEST, RED], [EAST, RED], [$10], [$16] (t=8, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$1] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$0], [$8] -> [SOUTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [$0], [$9] -> [SOUTH, RED] (t=10, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$18] (t=10, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$8] (t=10, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  GRANT_PREDICATE, [$1], [$10] -> [WEST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$1], [$8] -> [WEST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [SOUTH, RED], [$10] -> [EAST, RED], [SOUTH, RED] (t=13, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$2] (t=13, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [arg0], [WEST, RED] -> [SOUTH, RED], [WEST, RED] (t=14, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$0] (t=14, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$17] (t=14, inv_iters=0)
  CTRL_MOV, [SOUTH, RED] -> [$10] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GRANT_PREDICATE, [$0], [$16] -> [$1], [WEST, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  PHI, [$17], [WEST, RED] -> [NORTH, RED] (t=16, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  MUL, [WEST, RED], [$0] -> [SOUTH, RED] (t=17, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$16] (t=17, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$8] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  GRANT_PREDICATE, [$1], [$8] -> [$0] (t=18, inv_iters=0)
  DATA_MOV, [$16] -> [SOUTH, RED] (t=18, inv_iters=0)
} (idx_per_ii=18)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=19, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=19, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(3,2):
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=20, inv_iters=1)
  CTRL_MOV, [SOUTH, RED] -> [$9] (t=20, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [$10] (t=21, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [WEST, RED] -> [$8] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GRANT_ONCE, [#0] -> [WEST, RED], [$0] (t=5, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$16] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI_START, [$0], [$10] -> [$0], [$10] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$0], [$8] -> [$0], [$8] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  SEXT, [$0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI, [$9], [$0] -> [SOUTH, RED], [$1] (t=9, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$9] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI, [$2], [$8] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  PHI, [$12], [$0] -> [$17], [$0] (t=11, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=11, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$8] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$0], [$9] -> [$2], [WEST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$10], [$16] -> [WEST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  PHI, [$11], [$1] -> [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [$0], [$9] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [$0], [$8] -> [$11] (t=17, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$16] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  GRANT_PREDICATE, [$17], [$8] -> [$12] (t=18, inv_iters=0)
} (idx_per_ii=18)
{
  GRANT_PREDICATE, [$2], [$16] -> [$2] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(0,3):
{
  STORE, [EAST, RED], [$0] (t=22, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  PHI, [$0], [SOUTH, RED] -> [EAST, RED] (t=16, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  LOAD, [EAST, RED] -> [EAST, RED] (t=17, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=17, inv_iters=0)
} (idx_per_ii=17)

PE(1,3):
{
  GRANT_PREDICATE, [$1], [$8] -> [$8] (t=20, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=21, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [SOUTH, RED] -> [$9] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI, [$8], [$0] -> [SOUTH, RED], [$1] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [SOUTH, RED] -> [$2] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [SOUTH, RED] -> [$8] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  AND, [$0], [#4294967294] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI, [$10], [$1] -> [$0] (t=12, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$10] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$0], [$8] -> [$1], [SOUTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$2], [$9] -> [WEST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GEP, [arg0], [EAST, RED] -> [WEST, RED], [EAST, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=16, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$8] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  SHL, [WEST, RED], [#1] -> [SOUTH, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=18, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=18, inv_iters=0)
} (idx_per_ii=18)
{
  GRANT_PREDICATE, [$0], [$10] -> [$10] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(2,3):
{
  ADD, [$0], [SOUTH, RED] -> [WEST, RED] (t=20, inv_iters=1)
} (idx_per_ii=0)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [SOUTH, RED] -> [$9] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI, [$3], [WEST, RED] -> [$8], [EAST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  PHI, [$10], [$0] -> [$2], [SOUTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  ADD, [$1], [$8] -> [WEST, RED], [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GEP, [arg1], [$0] -> [WEST, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  SHL, [SOUTH, RED], [#1] -> [$0] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  OR, [$0], [#1] -> [EAST, RED] (t=18, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$3] (t=18, inv_iters=0)
} (idx_per_ii=18)
{
  GRANT_PREDICATE, [$2], [$9] -> [$10] (t=19, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=19, inv_iters=0)
} (idx_per_ii=19)

PE(3,3):
{
  DATA_MOV, [SOUTH, RED] -> [$8] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$0], [$8] -> [WEST, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=19, inv_iters=0)
} (idx_per_ii=19)

