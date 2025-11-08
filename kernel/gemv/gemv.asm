# Compiled II: 13

PE(0,0):
{
  CONSTANT, [#0] -> [EAST, RED]
} (t=0)
{
  GRANT_ONCE, [] -> [$0]
} (t=2)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [NORTH, RED], [EAST, RED]
} (t=3)
{
  DATA_MOV, [NORTH, RED] -> [EAST, RED]
} (t=5)
{
  GRANT_ONCE, [#0.000000] -> [EAST, RED]
} (t=8)
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=11)
{
  GEP, [$0], [NORTH, RED] -> [NORTH, RED]
} (t=12)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=17)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=18)

PE(1,0):
{
  ICMP_SGT, [WEST, RED], [#0] -> [$0]
} (t=1)
{
  GRANT_ONCE, [$0] -> [WEST, RED], [EAST, RED], [NORTH, RED], [$1], [$4], [$2], [$0]
} (t=2)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=4)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=6)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [EAST, RED]
} (t=9)
{
  GRANT_PREDICATE, [EAST, RED], [$1] -> [NORTH, RED]
} (t=13)
{
  DATA_MOV, [NORTH, RED] -> [$3]
} (t=15)
{
  GRANT_PREDICATE, [NORTH, RED], [$2] -> [WEST, RED]
} (t=16)
{
  GRANT_PREDICATE, [$3], [$4] -> [WEST, RED]
  DATA_MOV, [EAST, RED] -> [$3]
} (t=17)
{
  STORE, [NORTH, RED], [$3]
} (t=18)

PE(2,0):
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=3)
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=7)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [$0]
} (t=10)
{
  PHI, [NORTH, RED], [$0] -> [$1], [$0]
  DATA_MOV, [NORTH, RED] -> [$2]
} (t=11)
{
  PHI, [NORTH, RED], [$0] -> [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=12)
{
  PHI, [NORTH, RED], [$1] -> [NORTH, RED], [$0]
} (t=13)
{
  GRANT_PREDICATE, [$0], [$2] -> [NORTH, RED]
} (t=14)
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED]
} (t=16)
{
  CTRL_MOV, [NORTH, RED] -> [$3]
} (t=17)
{
  CTRL_MOV, [NORTH, RED] -> [$1]
} (t=18)
{
  CTRL_MOV, [NORTH, RED] -> [$4]
} (t=20)

PE(3,0):
{
  GRANT_ONCE, [#2] -> [WEST, RED]
} (t=11)

PE(0,1):
{
  ICMP_SGT, [SOUTH, RED], [#0] -> [EAST, RED], [NORTH, RED], [SOUTH, RED], [$1]
} (t=4)
{
  GEP, [EAST, RED] -> [$0]
} (t=9)
{
  PHI, [EAST, RED], [$0] -> [SOUTH, RED], [EAST, RED]
} (t=10)
{
  NOT, [$1] -> [EAST, RED], [NORTH, RED], [$3], [$2]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=11)
{
  LOAD, [NORTH, RED] -> [$1]
  DATA_MOV, [EAST, RED] -> [EAST, RED]
} (t=12)
{
  LOAD, [SOUTH, RED] -> [$0]
  DATA_MOV, [NORTH, RED] -> [EAST, RED]
} (t=13)
{
  DATA_MOV, [NORTH, RED] -> [EAST, RED]
  DATA_MOV, [EAST, RED] -> [$4]
} (t=14)
{
  FMUL_FADD, [$0], [$1], [EAST, RED] -> [NORTH, RED], [$0]
} (t=15)
{
  GRANT_PREDICATE, [$0], [$4] -> [EAST, RED]
} (t=16)
{
  GRANT_PREDICATE, [SOUTH, RED], [$2] -> [$2]
  DATA_MOV, [NORTH, RED] -> [$4]
  CTRL_MOV, [EAST, RED] -> [$5]
} (t=18)
{
  GRANT_PREDICATE, [SOUTH, RED], [$3] -> [$0]
} (t=19)
{
  MEMSET, [$0], [$2], [$4]
} (t=20)

PE(1,1):
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=3)
{
  GRANT_PREDICATE, [SOUTH, RED], [WEST, RED] -> [$0]
} (t=5)
{
  ZEXT, [$0] -> [$0]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=6)
{
  PHI, [EAST, RED], [$0] -> [$0], [$1]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=7)
{
  MUL, [NORTH, RED], [$0] -> [WEST, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=8)
{
  PHI, [NORTH, RED], [$1] -> [EAST, RED], [NORTH, RED], [$1]
} (t=9)
{
  PHI, [$3], [$0] -> [$3], [EAST, RED]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=10)
{
  GRANT_PREDICATE, [$1], [EAST, RED] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=11)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [EAST, RED]
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=12)
{
  DATA_MOV, [NORTH, RED] -> [$0]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=13)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
  CTRL_MOV, [NORTH, RED] -> [$2]
} (t=14)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [NORTH, RED]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
  DATA_MOV, [EAST, RED] -> [$0]
} (t=15)
{
  GRANT_PREDICATE, [$3], [$0] -> [$3]
  DATA_MOV, [EAST, RED] -> [$1]
} (t=16)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED]
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
  CTRL_MOV, [EAST, RED] -> [WEST, RED]
} (t=17)
{
  CTRL_MOV, [EAST, RED] -> [NORTH, RED]
} (t=18)
{
  CTRL_MOV, [EAST, RED] -> [$1]
} (t=19)

PE(2,1):
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=4)
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED]
} (t=9)
{
  ICMP_EQ, [NORTH, RED], [WEST, RED] -> [NORTH, RED], [$0], [EAST, RED], [WEST, RED], [SOUTH, RED]
} (t=10)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [EAST, RED], [$0]
} (t=11)
{
  ADD, [$0], [#1] -> [$0], [EAST, RED]
  DATA_MOV, [WEST, RED] -> [$1]
  DATA_MOV, [NORTH, RED] -> [$2]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=12)
{
  ZEXT, [WEST, RED] -> [NORTH, RED]
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=13)
{
  ICMP_EQ, [$0], [NORTH, RED] -> [$0]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [$4]
} (t=14)
{
  NOT, [$0] -> [EAST, RED], [$5], [WEST, RED], [$3], [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=15)
{
  GRANT_PREDICATE, [$1], [$2] -> [WEST, RED]
  CTRL_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=16)
{
  GRANT_PREDICATE, [$0], [$3] -> [SOUTH, RED]
  CTRL_MOV, [EAST, RED] -> [WEST, RED]
} (t=17)
{
  GRANT_PREDICATE, [$4], [$5] -> [WEST, RED]
  CTRL_MOV, [WEST, RED] -> [NORTH, RED]
} (t=18)
{
  CTRL_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=19)

PE(3,1):
{
  DATA_MOV, [WEST, RED] -> [WEST, RED]
} (t=11)
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=12)
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [$1]
} (t=13)
{
  GEP, [$0] -> [WEST, RED]
} (t=14)
{
  GRANT_PREDICATE, [$1], [WEST, RED] -> [WEST, RED]
} (t=16)

PE(0,2):
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=5)
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=10)
{
  GEP, [$0] -> [SOUTH, RED]
} (t=11)
{
  GRANT_ONCE, [] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=12)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=13)
{
  RETURN
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=15)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [EAST, RED]
} (t=16)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=17)

PE(1,2):
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=4)
{
  GRANT_PREDICATE, [NORTH, RED], [WEST, RED] -> [EAST, RED], [$0]
} (t=6)
{
  PHI, [SOUTH, RED], [$0] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=7)
{
  DATA_MOV, [EAST, RED] -> [$1]
} (t=8)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=9)
{
  ZEXT, [NORTH, RED] -> [$0]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
  DATA_MOV, [SOUTH, RED] -> [$2]
} (t=10)
{
  PHI, [EAST, RED], [$0] -> [$0]
} (t=11)
{
  PHI, [SOUTH, RED], [$0] -> [SOUTH, RED], [EAST, RED]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=12)
{
  PHI, [EAST, RED], [$1] -> [EAST, RED], [$1]
  DATA_MOV, [WEST, RED] -> [$0]
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=13)
{
  GRANT_PREDICATE, [$1], [$2] -> [SOUTH, RED]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=14)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [$1]
  DATA_MOV, [EAST, RED] -> [$0]
} (t=15)
{
  SHL, [$0], [$1] -> [WEST, RED]
  CTRL_MOV, [SOUTH, RED] -> [$3]
} (t=16)
{
  CTRL_MOV, [WEST, RED] -> [EAST, RED]
  CTRL_MOV, [EAST, RED] -> [$2]
} (t=17)
{
  CTRL_MOV, [EAST, RED] -> [$4]
} (t=18)
{
  CTRL_MOV, [SOUTH, RED] -> [$1]
} (t=19)

PE(2,2):
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=5)
{
  PHI, [SOUTH, RED], [WEST, RED] -> [WEST, RED], [$0]
} (t=7)
{
  PHI, [$1], [$0] -> [SOUTH, RED], [WEST, RED], [$0]
} (t=8)
{
  ADD, [$0], [#1] -> [SOUTH, RED], [$2]
  DATA_MOV, [NORTH, RED] -> [WEST, RED]
} (t=9)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=10)
{
  NOT, [SOUTH, RED] -> [$3], [NORTH, RED], [SOUTH, RED], [$1], [EAST, RED], [WEST, RED], [$5], [$4]
  DATA_MOV, [WEST, RED] -> [$0]
} (t=11)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED]
} (t=12)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [SOUTH, RED], [$6]
} (t=13)
{
  GRANT_PREDICATE, [$2], [$3] -> [$1]
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [$0]
} (t=14)
{
  GRANT_PREDICATE, [SOUTH, RED], [$4] -> [SOUTH, RED]
} (t=15)
{
  GRANT_PREDICATE, [$0], [$5] -> [WEST, RED]
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=16)
{
  GRANT_PREDICATE, [$6], [$0] -> [WEST, RED]
} (t=17)
{
  CTRL_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=18)
{
  CTRL_MOV, [SOUTH, RED] -> [$0]
} (t=19)

PE(3,2):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=12)

PE(0,3):
{
  GRANT_ONCE, [#0] -> [EAST, RED]
} (t=12)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=14)

PE(1,3):
{
  GRANT_ONCE, [#0] -> [$0]
  DATA_MOV, [SOUTH, RED] -> [$1]
} (t=4)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [SOUTH, RED]
} (t=5)
{
  GRANT_ONCE, [] -> [EAST, RED]
} (t=6)
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=8)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED]
} (t=9)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=13)

PE(2,3):
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=6)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [WEST, RED], [SOUTH, RED]
} (t=7)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=12)

