# Compiled II: 19

PE(0,0):
{
  STORE, [$0], [EAST, RED] (t=20, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=20, inv_iters=1)
} (idx_per_ii=1)
{
  STORE, [$0], [$1] (t=21, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [EAST, RED] -> [$1] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  ADD, [NORTH, RED], [EAST, RED] -> [$0] (t=18, inv_iters=0)
} (idx_per_ii=18)

PE(1,0):
{
  GRANT_PREDICATE, [$2], [NORTH, RED] -> [EAST, RED] (t=19, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=19, inv_iters=1)
} (idx_per_ii=0)
{
  STORE, [NORTH, RED], [$3] (t=20, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  LOAD, [EAST, RED] -> [EAST, RED], [$0] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [EAST, RED] -> [$3] (t=14, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  MUL, [$0], [EAST, RED] -> [EAST, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  DATA_MOV, [EAST, RED] -> [$2] (t=16, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$0] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [EAST, RED] (t=17, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  GRANT_PREDICATE, [$1], [NORTH, RED] -> [NORTH, RED] (t=18, inv_iters=0)
} (idx_per_ii=18)

PE(2,0):
{
  CTRL_MOV, [WEST, RED] -> [$1] (t=20, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GEP, [NORTH, RED] -> [WEST, RED], [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  LOAD, [NORTH, RED] -> [$0] (t=13, inv_iters=0)
  DATA_MOV, [$0] -> [WEST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  PHI_START, [$0], [$1] -> [$0], [WEST, RED], [$1] (t=14, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  MUL, [EAST, RED], [$0] -> [NORTH, RED] (t=15, inv_iters=0)
  DATA_MOV, [$1] -> [WEST, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  ADD, [EAST, RED], [WEST, RED] -> [NORTH, RED], [WEST, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  RETURN_VOID, [WEST, RED] (t=18, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=18, inv_iters=0)
} (idx_per_ii=18)

PE(3,0):
{
  GRANT_ONCE, [#0] -> [WEST, RED], [NORTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  LOAD, [NORTH, RED] -> [NORTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  LOAD, [NORTH, RED] -> [WEST, RED], [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  MUL, [$0], [NORTH, RED] -> [WEST, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)

PE(0,1):
{
  SUB, [NORTH, RED], [EAST, RED] -> [SOUTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$2], [$0] -> [EAST, RED] (t=20, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [$5] (t=20, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [$2] (t=3, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [EAST, RED] (t=22, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  DATA_MOV, [EAST, RED] -> [$3] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  ZEXT, [$0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [$0], [$4] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI_START, [$0], [$1] -> [NORTH, RED], [$1], [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [NORTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$1], [NORTH, RED] -> [$1] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  NOT, [$2] -> [NORTH, RED] (t=14, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$2] (t=14, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  PHI_START, [$3], [$5] -> [$0], [NORTH, RED] (t=15, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=16, inv_iters=0)
  DATA_MOV, [$0] -> [NORTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  DATA_MOV, [EAST, RED] -> [EAST, RED] (t=18, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$4] (t=18, inv_iters=0)
} (idx_per_ii=18)

PE(1,1):
{
  SUB, [NORTH, RED], [EAST, RED] -> [SOUTH, RED] (t=19, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=19, inv_iters=1)
  CTRL_MOV, [SOUTH, RED] -> [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$4], [$5] -> [$4] (t=20, inv_iters=1)
} (idx_per_ii=1)
{
  ICMP_SGT, [NORTH, RED], [#0] -> [EAST, RED], [$0], [$2], [NORTH, RED], [WEST, RED] (t=2, inv_iters=0)
  CTRL_MOV, [WEST, RED] -> [$5] (t=21, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [$0], [WEST, RED], [$1] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  ZEXT, [$0] -> [$0] (t=4, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=4, inv_iters=0)
  CTRL_MOV, [WEST, RED] -> [$6] (t=23, inv_iters=1)
} (idx_per_ii=4)
{
  PHI_START, [$0], [$6] -> [NORTH, RED], [WEST, RED] (t=5, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$0] (t=24, inv_iters=1)
} (idx_per_ii=5)
{
  PHI_START, [$1], [$0] -> [$0], [$1] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  ADD, [$0], [NORTH, RED] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ZEXT, [$0] -> [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GRANT_PREDICATE, [NORTH, RED], [$2] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  ZEXT, [$0] -> [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI_START, [$0], [$3] -> [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  PHI_START, [$0], [$5] -> [WEST, RED], [$0] (t=13, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [NORTH, RED], [$2] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  ICMP_EQ, [EAST, RED], [#8] -> [$0], [SOUTH, RED], [$3] (t=15, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  PHI_START, [$1], [$4] -> [$4], [NORTH, RED] (t=16, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=16, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$5] (t=16, inv_iters=0)
  DATA_MOV, [$3] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  NOT, [$0] -> [WEST, RED], [SOUTH, RED], [$1], [EAST, RED], [NORTH, RED] (t=17, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$0] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  GRANT_PREDICATE, [$2], [$0] -> [$3] (t=18, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=18, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=18, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=18, inv_iters=0)
} (idx_per_ii=18)

PE(2,1):
{
  GRANT_PREDICATE, [$4], [WEST, RED] -> [NORTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$5], [WEST, RED] -> [EAST, RED] (t=20, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$2], [$1] -> [$6] (t=21, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=3, inv_iters=0)
  GRANT_PREDICATE, [$7], [NORTH, RED] -> [$4] (t=22, inv_iters=1)
} (idx_per_ii=3)
{
  CTRL_MOV, [NORTH, RED] -> [$2] (t=23, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [$0] (t=7, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  SEXT, [$0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [$0], [$2] -> [NORTH, RED], [$2] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$5] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI_START, [WEST, RED], [$4] -> [$0], [$7] (t=10, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$4] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  ADD, [NORTH, RED], [$0] -> [SOUTH, RED], [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GEP, [$0] -> [EAST, RED], [WEST, RED] (t=12, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  PHI_START, [$1], [$3] -> [$0] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  ADD, [$0], [#1] -> [WEST, RED], [$3] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  MUL, [SOUTH, RED], [EAST, RED] -> [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  PHI_START, [$2], [$6] -> [$2], [NORTH, RED] (t=16, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  SUB, [$0], [$1] -> [$0], [NORTH, RED] (t=17, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=17, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=17, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$1] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  GRANT_PREDICATE, [$3], [WEST, RED] -> [$3] (t=18, inv_iters=0)
  DATA_MOV, [$0] -> [WEST, RED] (t=18, inv_iters=0)
} (idx_per_ii=18)

PE(3,1):
{
  CTRL_MOV, [WEST, RED] -> [$0] (t=21, inv_iters=1)
} (idx_per_ii=2)
{
  CTRL_MOV, [NORTH, RED] -> [$1] (t=22, inv_iters=1)
} (idx_per_ii=3)
{
  PHI_START, [SOUTH, RED], [$0] -> [WEST, RED], [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  SHL, [$0], [#1] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  OR, [$0], [#1] -> [WEST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  PHI_START, [SOUTH, RED], [$1] -> [WEST, RED], [SOUTH, RED], [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(0,2):
{
  GRANT_PREDICATE, [$8], [$11] -> [EAST, RED] (t=19, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=19, inv_iters=1)
  CTRL_MOV, [$0] -> [SOUTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [EAST, RED] (t=20, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$2], [$1] -> [SOUTH, RED] (t=21, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=21, inv_iters=1)
} (idx_per_ii=2)
{
  STORE, [$0], [$3] (t=22, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [EAST, RED] -> [$2] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  ICMP_EQ, [EAST, RED], [SOUTH, RED] -> [$0], [EAST, RED], [$1], [$3], [$4], [NORTH, RED], [SOUTH, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  NOT, [$0] -> [$1], [$6], [$11], [SOUTH, RED], [$3], [$7], [$5] (t=12, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=12, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=12, inv_iters=0)
  DATA_MOV, [$3] -> [NORTH, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=13, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$8] (t=13, inv_iters=0)
  DATA_MOV, [$5] -> [NORTH, RED] (t=13, inv_iters=0)
  DATA_MOV, [$3] -> [SOUTH, RED] (t=13, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [$6] -> [NORTH, RED] (t=14, inv_iters=0)
  DATA_MOV, [$3] -> [SOUTH, RED] (t=14, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GRANT_PREDICATE, [$2], [SOUTH, RED] -> [EAST, RED] (t=15, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$3] (t=15, inv_iters=0)
  DATA_MOV, [$6] -> [NORTH, RED] (t=15, inv_iters=0)
  DATA_MOV, [$1] -> [SOUTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [SOUTH, RED], [$4] -> [$2] (t=16, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=16, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [SOUTH, RED] (t=17, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=17, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  GRANT_PREDICATE, [$0], [$7] -> [$0] (t=18, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=18, inv_iters=0)
  DATA_MOV, [$1] -> [EAST, RED] (t=18, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$1] (t=18, inv_iters=0)
} (idx_per_ii=18)

PE(1,2):
{
  GRANT_ONCE, [#128] -> [$0] (t=0, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=19, inv_iters=1)
  DATA_MOV, [$0] -> [WEST, RED] (t=19, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [$5] (t=19, inv_iters=1)
} (idx_per_ii=0)
{
  PHI_START, [$0], [SOUTH, RED] -> [SOUTH, RED], [$1], [$0] (t=1, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=20, inv_iters=1)
  CTRL_MOV, [WEST, RED] -> [$6] (t=20, inv_iters=1)
} (idx_per_ii=1)
{
  DIV, [$0], [#2] -> [$0] (t=2, inv_iters=0)
  DATA_MOV, [$1] -> [SOUTH, RED] (t=2, inv_iters=0)
  CTRL_MOV, [WEST, RED] -> [EAST, RED] (t=21, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [EAST, RED], [SOUTH, RED] -> [$1], [$0] (t=3, inv_iters=0)
  DATA_MOV, [$0] -> [SOUTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  PHI_START, [$0], [$2] -> [EAST, RED], [$0], [$2] (t=4, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=4, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [SOUTH, RED] (t=23, inv_iters=1)
} (idx_per_ii=4)
{
  SHL, [$0], [#1] -> [$0] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  MUL, [$0], [SOUTH, RED] -> [$0], [NORTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  CAST_TRUNC, [$0] -> [SOUTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  PHI_START, [$1], [$4] -> [EAST, RED], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI_START, [$0], [$3] -> [EAST, RED], [NORTH, RED], [$0] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ADD, [$0], [#1] -> [WEST, RED], [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  PHI_START, [$2], [$5] -> [NORTH, RED], [$0] (t=11, inv_iters=0)
  DATA_MOV, [$0] -> [WEST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI_START, [NORTH, RED], [$6] -> [NORTH, RED], [WEST, RED] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$1] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0] (t=13, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  ADD, [$0], [#1] -> [$0], [NORTH, RED] (t=14, inv_iters=0)
  CTRL_MOV, [WEST, RED] -> [$3] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  ICMP_EQ, [$0], [SOUTH, RED] -> [$0], [EAST, RED] (t=15, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=15, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$1] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  NOT, [$0] -> [NORTH, RED], [$0], [$6], [$4], [WEST, RED], [SOUTH, RED] (t=16, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=16, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$2] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [SOUTH, RED], [$1] -> [NORTH, RED] (t=17, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=17, inv_iters=0)
  DATA_MOV, [$6] -> [WEST, RED] (t=17, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  GRANT_PREDICATE, [$2], [$4] -> [$4] (t=18, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=18, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=18, inv_iters=0)
  DATA_MOV, [$0] -> [NORTH, RED] (t=18, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=18, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$2] (t=18, inv_iters=0)
} (idx_per_ii=18)

PE(2,2):
{
  ADD, [NORTH, RED], [$0] -> [WEST, RED] (t=19, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=19, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_ONCE, [#0] -> [$0] (t=1, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=20, inv_iters=1)
  CTRL_MOV, [SOUTH, RED] -> [$2] (t=20, inv_iters=1)
} (idx_per_ii=1)
{
  PHI_START, [$0], [EAST, RED] -> [WEST, RED], [$0] (t=2, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [$0] -> [WEST, RED] (t=3, inv_iters=0)
  CTRL_MOV, [WEST, RED] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_ONCE, [#1] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  PHI_START, [$0], [$2] -> [WEST, RED], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  SHL, [$0], [#1] -> [SOUTH, RED] (t=9, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$2] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ADD, [$1], [SOUTH, RED] -> [EAST, RED], [$0] (t=10, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  GEP, [$0] -> [SOUTH, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI_START, [$2], [$3] -> [NORTH, RED], [$0] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [WEST, RED], [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [$0] (t=16, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [SOUTH, RED], [WEST, RED] -> [WEST, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  PHI, [WEST, RED], [$0] -> [EAST, RED] (t=18, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=18, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$3] (t=18, inv_iters=0)
} (idx_per_ii=18)

PE(3,2):
{
  DATA_MOV, [WEST, RED] -> [$1] (t=19, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$1], [WEST, RED] -> [WEST, RED] (t=20, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [SOUTH, RED] (t=21, inv_iters=1)
} (idx_per_ii=2)
{
  GEP, [WEST, RED] -> [SOUTH, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)

PE(0,3):
{
  CTRL_MOV, [EAST, RED] -> [EAST, RED] (t=21, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [EAST, RED] -> [$0], [SOUTH, RED] (t=14, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  LOAD, [EAST, RED] -> [EAST, RED], [SOUTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  LOAD, [$0] -> [SOUTH, RED], [EAST, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=17, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=18, inv_iters=0)
} (idx_per_ii=18)

PE(1,3):
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=19, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=19, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED] (t=20, inv_iters=1)
} (idx_per_ii=1)
{
  CTRL_MOV, [WEST, RED] -> [SOUTH, RED] (t=22, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  AND, [$0], [#4294967294] -> [SOUTH, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [SOUTH, RED] -> [$2] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  ADD, [$1], [SOUTH, RED] -> [WEST, RED], [$0] (t=13, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GEP, [$0] -> [WEST, RED], [EAST, RED] (t=14, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=15, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  DATA_MOV, [WEST, RED] -> [WEST, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [SOUTH, RED] (t=17, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  GRANT_PREDICATE, [$2], [WEST, RED] -> [SOUTH, RED] (t=18, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=18, inv_iters=0)
} (idx_per_ii=18)

PE(2,3):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=20, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=14, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=18, inv_iters=0)
} (idx_per_ii=18)

