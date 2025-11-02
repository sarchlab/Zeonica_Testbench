# Compiled II: 12

PE(0,0):
{
  CONSTANT, [#0] -> [EAST, RED]
} (t=0)
{
  GRANT_ONCE, [] -> [EAST, RED], [NORTH, RED]
} (t=2)
{
  GRANT_ONCE, [#0] -> [NORTH, RED]
} (t=3)
{
  ICMP_SGT, [EAST, RED], [#0] -> [NORTH, RED], [EAST, RED], [$0]
} (t=4)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [NORTH, RED], [$0]
} (t=6)
{
  PHI, [EAST, RED], [$0] -> [$1], [NORTH, RED], [$0]
} (t=8)
{
  PHI, [$2], [$0] -> [NORTH, RED], [$2], [EAST, RED]
} (t=9)
{
  GEP, [$1] -> [NORTH, RED], [EAST, RED]
} (t=10)
{
  GRANT_ONCE, [] -> [EAST, RED]
} (t=11)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=12)
{
  LOAD, [$0] -> [NORTH, RED]
} (t=13)
{
  DATA_MOV, [SOUTH, RED] -> [$1]
} (t=15)
{
  GRANT_PREDICATE, [$2], [$1] -> [$2]
} (t=17)
{
  CTRL_MOV, [WEST, RED] -> [$1]
} (t=18)

PE(1,0):
{
  ICMP_SGT, [WEST, RED], [#0] -> [EAST, RED]
} (t=1)
{
  GRANT_PREDICATE, [WEST, RED], [EAST, RED] -> [WEST, RED], [EAST, RED]
} (t=3)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=5)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=10)
{
  PHI, [EAST, RED], [WEST, RED] -> [$0], [NORTH, RED], [EAST, RED]
} (t=11)
{
  LOAD, [$0] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=12)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=13)
{
  STORE, [$0]
} (t=14)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=15)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [WEST, RED]
  CTRL_MOV, [WEST, RED] -> [$0]
} (t=17)

PE(2,0):
{
  GRANT_ONCE, [WEST, RED] -> [NORTH, RED], [$1], [$3], [$2], [WEST, RED], [EAST, RED]
} (t=2)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=4)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=12)
{
  GRANT_PREDICATE, [NORTH, RED], [$1] -> [EAST, RED]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=13)
{
  GRANT_PREDICATE, [NORTH, RED], [$2] -> [$4]
  DATA_MOV, [WEST, RED] -> [$5]
} (t=15)
{
  GRANT_PREDICATE, [NORTH, RED], [$3] -> [$0]
  CTRL_MOV, [EAST, RED] -> [WEST, RED]
} (t=16)
{
  MEMSET, [$0], [$4], [$5]
} (t=17)

PE(3,0):
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=3)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=13)
{
  SHL, [NORTH, RED], [WEST, RED] -> [WEST, RED]
} (t=14)
{
  CTRL_MOV, [NORTH, RED] -> [WEST, RED]
} (t=15)

PE(0,1):
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=3)
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=4)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=5)
{
  PHI, [EAST, RED], [SOUTH, RED] -> [NORTH, RED], [$0]
} (t=7)
{
  PHI, [EAST, RED], [$0] -> [$1], [NORTH, RED], [EAST, RED], [$0]
} (t=8)
{
  ADD, [$0], [#1] -> [EAST, RED], [NORTH, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=9)
{
  GEP, [$0] -> [$0]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=10)
{
  PHI, [EAST, RED], [$0] -> [SOUTH, RED], [EAST, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=11)
{
  GEP, [$1] -> [NORTH, RED], [$0]
} (t=12)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=14)
{
  CTRL_MOV, [WEST, RED] -> [$1]
} (t=15)
{
  STORE, [NORTH, RED], [$0]
} (t=16)
{
  CTRL_MOV, [WEST, RED] -> [$2]
} (t=22)

PE(1,1):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=4)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=6)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [$0]
} (t=7)
{
  ZEXT, [$0] -> [$0]
} (t=8)
{
  PHI, [$2], [$0] -> [$0]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=9)
{
  PHI, [EAST, RED], [$0] -> [$1], [EAST, RED], [$2]
  DATA_MOV, [EAST, RED] -> [$0]
} (t=10)
{
  ICMP_EQ, [$0], [$1] -> [EAST, RED], [$3], [NORTH, RED], [$0]
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=11)
{
  GRANT_PREDICATE, [$2], [$0] -> [$2]
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=12)
{
  GRANT_PREDICATE, [$1], [$3] -> [$0]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=13)
{
  ADD, [$0], [#1] -> [$0], [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [$3]
  CTRL_MOV, [WEST, RED] -> [$1]
} (t=14)
{
  ICMP_EQ, [$0], [EAST, RED] -> [$0]
} (t=15)
{
  NOT, [$0] -> [SOUTH, RED], [$4], [$0], [EAST, RED]
} (t=16)
{
  GRANT_PREDICATE, [$2], [$0] -> [$2]
  CTRL_MOV, [EAST, RED] -> [WEST, RED]
} (t=17)
{
  GRANT_PREDICATE, [$3], [$4] -> [WEST, RED]
} (t=18)
{
  CTRL_MOV, [EAST, RED] -> [WEST, RED]
} (t=21)

PE(2,1):
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=2)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=3)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=5)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [EAST, RED], [WEST, RED]
} (t=6)
{
  GRANT_PREDICATE, [$1], [WEST, RED] -> [EAST, RED]
} (t=7)
{
  PHI, [$3], [EAST, RED] -> [$0]
} (t=9)
{
  PHI, [$2], [$0] -> [$4], [$0]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=10)
{
  DATA_MOV, [EAST, RED] -> [$6]
  DATA_MOV, [EAST, RED] -> [$1]
} (t=11)
{
  NOT, [WEST, RED] -> [$3], [$7], [WEST, RED], [EAST, RED], [$2], [$5], [NORTH, RED]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=12)
{
  GRANT_PREDICATE, [$1], [$2] -> [WEST, RED]
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
  DATA_MOV, [SOUTH, RED] -> [$2]
} (t=13)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED], [$1]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=14)
{
  GRANT_PREDICATE, [$2], [$3] -> [WEST, RED]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=15)
{
  GRANT_PREDICATE, [$4], [$5] -> [$2]
} (t=16)
{
  GRANT_PREDICATE, [$1], [WEST, RED] -> [$3]
} (t=17)
{
  GRANT_PREDICATE, [$6], [$7] -> [WEST, RED]
} (t=20)

PE(3,1):
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=4)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=7)
{
  ZEXT, [WEST, RED] -> [WEST, RED]
} (t=8)
{
  GEP, [WEST, RED] -> [$0]
} (t=11)
{
  LOAD, [$0] -> [WEST, RED]
} (t=12)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
  DATA_MOV, [EAST, RED] -> [$0]
} (t=13)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [SOUTH, RED]
} (t=14)

PE(0,2):
{
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=8)
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=9)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=10)
{
  GEP, [SOUTH, RED], [$0] -> [EAST, RED], [NORTH, RED]
} (t=11)
{
  PHI, [EAST, RED], [$1] -> [EAST, RED]
} (t=12)
{
  LOAD, [SOUTH, RED] -> [$0]
} (t=13)
{
  FMUL_FADD, [SOUTH, RED], [NORTH, RED], [$0] -> [SOUTH, RED]
} (t=15)
{
  CTRL_MOV, [WEST, RED] -> [$2]
} (t=16)

PE(1,2):
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=5)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=10)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=11)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [EAST, RED]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [$1]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=12)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [SOUTH, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=13)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
  DATA_MOV, [WEST, RED] -> [$2]
} (t=14)
{
  GRANT_PREDICATE, [$1], [$2] -> [WEST, RED]
} (t=15)
{
  STORE, [EAST, RED], [$0]
} (t=16)

PE(2,2):
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=5)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [$0]
} (t=6)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [NORTH, RED], [EAST, RED]
} (t=9)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=10)
{
  GRANT_ONCE, [#0] -> [EAST, RED], [WEST, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=11)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=12)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=13)
{
  RETURN
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=14)
{
  FMUL_FADD, [NORTH, RED], [$0], [WEST, RED] -> [WEST, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=15)

PE(3,2):
{
  DATA_MOV, [NORTH, RED] -> [$2]
} (t=8)
{
  GRANT_ONCE, [#3] -> [WEST, RED], [$0]
  DATA_MOV, [SOUTH, RED] -> [$1]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=10)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED]
} (t=11)
{
  ZEXT, [$2] -> [SOUTH, RED]
  DATA_MOV, [WEST, RED] -> [WEST, RED]
} (t=12)

PE(0,3):
{
  LOAD, [SOUTH, RED] -> [EAST, RED]
} (t=12)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=14)

PE(1,3):
{
  GRANT_ONCE, [] -> [EAST, RED]
} (t=3)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=9)
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=11)
{
  GRANT_ONCE, [] -> [EAST, RED]
} (t=12)
{
  LOAD, [SOUTH, RED] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=13)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [EAST, RED]
} (t=17)

PE(2,3):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=4)
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=7)
{
  NOT, [$0] -> [SOUTH, RED], [EAST, RED], [$0], [WEST, RED]
} (t=8)
{
  ICMP_SGT, [SOUTH, RED], [#0] -> [EAST, RED], [SOUTH, RED], [WEST, RED]
} (t=10)
{
  SHL, [EAST, RED], [SOUTH, RED] -> [$2]
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=13)
{
  DATA_MOV, [NORTH, RED] -> [$1]
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=14)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [WEST, RED]
} (t=16)
{
  MEMSET, [WEST, RED], [$1], [$2]
} (t=18)

PE(3,3):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=9)
{
  GRANT_PREDICATE, [SOUTH, RED], [WEST, RED] -> [$0]
} (t=11)
{
  ZEXT, [$0] -> [WEST, RED]
} (t=12)

