# Compiled II: 18

PE(1,0):
{
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=18, inv_iters=1)
} (idx_per_ii=0)
{
  STORE, [EAST, RED], [$1] (t=19, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  SEXT, [$0] -> [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  GEP, [NORTH, RED] -> [$0], [$1] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  LOAD, [$0] -> [$0], [EAST, RED] (t=13, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [$0] -> [EAST, RED] (t=14, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  ADD, [NORTH, RED], [EAST, RED] -> [NORTH, RED], [EAST, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  SUB, [EAST, RED], [NORTH, RED] -> [$0], [EAST, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  DATA_MOV, [$0] -> [EAST, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)

PE(2,0):
{
  SUB, [NORTH, RED], [WEST, RED] -> [WEST, RED] (t=18, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$4], [WEST, RED] -> [$4] (t=19, inv_iters=1)
} (idx_per_ii=1)
{
  CTRL_MOV, [NORTH, RED] -> [$3] (t=20, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_ONCE, [#0] -> [$2], [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI_START, [$0], [$4] -> [WEST, RED], [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  SHL, [$0], [#1] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  OR, [$0], [#1] -> [$4] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ADD, [$1], [WEST, RED] -> [EAST, RED], [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  GEP, [$0] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI_START, [$2], [$3] -> [$0] (t=12, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  ADD, [$0], [#1] -> [NORTH, RED], [$0] (t=13, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  MUL, [WEST, RED], [EAST, RED] -> [WEST, RED] (t=14, inv_iters=0)
  DATA_MOV, [$0] -> [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  MUL, [WEST, RED], [EAST, RED] -> [WEST, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  ADD, [NORTH, RED], [$0] -> [EAST, RED] (t=17, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)

PE(3,0):
{
  STORE, [WEST, RED], [$0] (t=18, inv_iters=1)
} (idx_per_ii=0)
{
  GEP, [WEST, RED] -> [NORTH, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  LOAD, [WEST, RED] -> [WEST, RED], [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [$0] -> [WEST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=17, inv_iters=0)
} (idx_per_ii=17)

PE(0,1):
{
  STORE, [EAST, RED], [$1] (t=19, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [EAST, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  GEP, [EAST, RED] -> [$0], [$1] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  LOAD, [$0] -> [$0], [EAST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [$0] -> [EAST, RED] (t=14, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(1,1):
{
  SUB, [NORTH, RED], [$1] -> [WEST, RED] (t=18, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$3], [$2] -> [$3] (t=19, inv_iters=1)
} (idx_per_ii=1)
{
  ICMP_SGT, [NORTH, RED], [#0] -> [SOUTH, RED], [NORTH, RED], [$0], [EAST, RED], [WEST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  DATA_MOV, [$0] -> [NORTH, RED] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  DATA_MOV, [EAST, RED] -> [$1] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  MUL, [EAST, RED], [NORTH, RED] -> [$0], [NORTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  CAST_TRUNC, [$0] -> [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  ADD, [NORTH, RED], [$0] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ZEXT, [$0] -> [$2] (t=9, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI_START, [$1], [$3] -> [$3], [$1] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  ADD, [$0], [$2] -> [SOUTH, RED], [WEST, RED] (t=11, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [$1], [$0] -> [$0] (t=12, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [EAST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  ADD, [$0], [#1] -> [NORTH, RED], [$0] (t=13, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  MUL, [WEST, RED], [EAST, RED] -> [SOUTH, RED] (t=14, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$2] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  MUL, [WEST, RED], [SOUTH, RED] -> [SOUTH, RED] (t=15, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [EAST, RED], [NORTH, RED] -> [EAST, RED] (t=16, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [EAST, RED] (t=17, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)

PE(2,1):
{
  ADD, [$0], [SOUTH, RED] -> [EAST, RED] (t=18, inv_iters=1)
  CTRL_MOV, [WEST, RED] -> [$4] (t=18, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$5], [$6] -> [SOUTH, RED] (t=19, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [NORTH, RED], [WEST, RED] -> [$1], [$0] (t=3, inv_iters=0)
} (idx_per_ii=3)
{
  PHI_START, [$0], [$4] -> [SOUTH, RED], [$0], [WEST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  SHL, [$0], [#1] -> [WEST, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI_START, [$1], [$3] -> [$1], [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  PHI_START, [$0], [$2] -> [WEST, RED], [NORTH, RED], [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ADD, [$0], [#1] -> [$0], [$2] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ICMP_EQ, [$0], [NORTH, RED] -> [$0], [WEST, RED], [NORTH, RED], [$4], [$3] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  NOT, [$0] -> [$0], [SOUTH, RED], [$4], [WEST, RED], [EAST, RED] (t=11, inv_iters=0)
  DATA_MOV, [$4] -> [NORTH, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  PHI_START, [$1], [$7] -> [EAST, RED], [$1] (t=12, inv_iters=0)
  DATA_MOV, [$4] -> [WEST, RED] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GRANT_PREDICATE, [$2], [$0] -> [$2] (t=13, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=13, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  GRANT_PREDICATE, [$1], [$3] -> [$1], [WEST, RED] (t=14, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=14, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  ICMP_EQ, [$0], [#8] -> [$0], [$1], [$3] (t=15, inv_iters=0)
  DATA_MOV, [$1] -> [WEST, RED] (t=15, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$5] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  NOT, [$0] -> [WEST, RED], [$4], [NORTH, RED], [$6], [EAST, RED] (t=16, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=16, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [$1], [$3] -> [EAST, RED] (t=17, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=17, inv_iters=0)
  DATA_MOV, [$4] -> [NORTH, RED] (t=17, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$7] (t=17, inv_iters=0)
  CTRL_MOV, [WEST, RED] -> [$3] (t=17, inv_iters=0)
} (idx_per_ii=17)

PE(3,1):
{
  RETURN_VOID, [WEST, RED] (t=18, inv_iters=1)
} (idx_per_ii=0)
{
  STORE, [WEST, RED], [$2] (t=19, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [SOUTH, RED] -> [SOUTH, RED], [WEST, RED] (t=12, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$1] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=15, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$2] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED] (t=16, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=17, inv_iters=0)
} (idx_per_ii=17)

PE(0,2):
{
  DATA_MOV, [EAST, RED] -> [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(1,2):
{
  GRANT_ONCE, [#128] -> [$0] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  PHI_START, [$0], [EAST, RED] -> [SOUTH, RED], [$1], [$0] (t=1, inv_iters=0)
} (idx_per_ii=1)
{
  DIV, [$0], [#2] -> [EAST, RED] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=3, inv_iters=0)
  GRANT_PREDICATE, [$2], [$6] -> [$6] (t=21, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$1], [$0] -> [$0], [EAST, RED], [$1] (t=4, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$2] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  ZEXT, [$0] -> [SOUTH, RED] (t=5, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$3] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  PHI_START, [$1], [$6] -> [SOUTH, RED], [EAST, RED] (t=7, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  GRANT_PREDICATE, [EAST, RED], [$2] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ZEXT, [$0] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI_START, [$0], [$4] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  PHI_START, [$0], [$5] -> [WEST, RED], [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  NOT, [$3] -> [EAST, RED] (t=13, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  ICMP_EQ, [SOUTH, RED], [$0] -> [$0], [$1] (t=14, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$2] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  NOT, [$0] -> [$3], [$6], [SOUTH, RED], [$0] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [SOUTH, RED], [$1] -> [EAST, RED] (t=16, inv_iters=0)
  DATA_MOV, [$3] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  GRANT_PREDICATE, [$2], [$0] -> [$4] (t=17, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=17, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$2] (t=17, inv_iters=0)
  CTRL_MOV, [WEST, RED] -> [$5] (t=17, inv_iters=0)
} (idx_per_ii=17)

PE(2,2):
{
  GRANT_PREDICATE, [$6], [SOUTH, RED] -> [WEST, RED] (t=18, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_ONCE, [#0] -> [$0] (t=1, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$2] (t=19, inv_iters=1)
} (idx_per_ii=1)
{
  PHI_START, [$0], [$2] -> [SOUTH, RED], [$3] (t=2, inv_iters=0)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [$6] (t=3, inv_iters=0)
  GRANT_PREDICATE, [$5], [$1] -> [$2] (t=21, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [$1] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_ONCE, [#1] -> [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI_START, [$0], [$2] -> [WEST, RED], [$0] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  SHL, [$0], [#1] -> [$5] (t=8, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$2] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ZEXT, [$1] -> [SOUTH, RED] (t=9, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [WEST, RED], [$0] (t=12, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$4] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GEP, [NORTH, RED] -> [EAST, RED], [SOUTH, RED] (t=13, inv_iters=0)
  DATA_MOV, [$0] -> [WEST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  PHI_START, [$2], [$7] -> [EAST, RED], [$1] (t=14, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  GRANT_PREDICATE, [$3], [$0] -> [$0] (t=15, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [$1], [$4] -> [WEST, RED] (t=16, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)
{
  PHI, [$0], [WEST, RED] -> [EAST, RED] (t=17, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=17, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [$7] (t=17, inv_iters=0)
} (idx_per_ii=17)

PE(3,2):
{
  GRANT_PREDICATE, [WEST, RED], [SOUTH, RED] -> [WEST, RED] (t=18, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [WEST, RED] -> [WEST, RED], [SOUTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=15, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=15, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=15, inv_iters=0)
} (idx_per_ii=15)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED] (t=16, inv_iters=0)
} (idx_per_ii=16)

PE(1,3):
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  AND, [$0], [#4294967294] -> [EAST, RED] (t=11, inv_iters=0)
} (idx_per_ii=11)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=15, inv_iters=0)
} (idx_per_ii=15)

PE(2,3):
{
  DATA_MOV, [SOUTH, RED] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)
{
  ADD, [$0], [WEST, RED] -> [SOUTH, RED], [$0] (t=12, inv_iters=0)
} (idx_per_ii=12)
{
  GEP, [$0] -> [$0], [EAST, RED] (t=13, inv_iters=0)
} (idx_per_ii=13)
{
  LOAD, [$0] -> [WEST, RED], [SOUTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

PE(3,3):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=14, inv_iters=0)
} (idx_per_ii=14)

