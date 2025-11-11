# Compiled II: 12

PE(0,0):
{
  CONSTANT, [#0] -> [EAST, RED]
} (t=0)
{
  GRANT_ONCE, [] -> [EAST, RED], [NORTH, RED]
} (t=2)
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=4)
{
  DATA_MOV, [EAST, RED] -> [$1]
} (t=5)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0]
} (t=7)
{
  ZEXT, [$0] -> [NORTH, RED]
} (t=8)

PE(1,0):
{
  ICMP_SGT, [WEST, RED], [#0] -> [EAST, RED]
} (t=1)
{
  GRANT_PREDICATE, [WEST, RED], [EAST, RED] -> [$0], [WEST, RED]
} (t=3)
{
  ICMP_SGT, [$0], [#0] -> [WEST, RED], [NORTH, RED], [EAST, RED]
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=4)
{
  DATA_MOV, [NORTH, RED] -> [EAST, RED]
} (t=9)
{
  GEP, [EAST, RED] -> [$0], [EAST, RED]
} (t=11)
{
  LOAD, [$0] -> [NORTH, RED]
} (t=12)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=13)
{
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=14)
{
  GRANT_PREDICATE, [$1], [NORTH, RED] -> [NORTH, RED]
} (t=17)

PE(2,0):
{
  GRANT_ONCE, [WEST, RED] -> [WEST, RED], [EAST, RED], [$4], [$2], [NORTH, RED]
} (t=2)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=4)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=5)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
  DATA_MOV, [NORTH, RED] -> [WEST, RED]
} (t=10)
{
  LOAD, [EAST, RED] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [$5]
} (t=12)
{
  GRANT_PREDICATE, [NORTH, RED], [$2] -> [EAST, RED]
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=13)
{
  DATA_MOV, [NORTH, RED] -> [$3]
} (t=14)
{
  GRANT_PREDICATE, [$3], [$4] -> [EAST, RED]
} (t=15)
{
  STORE, [NORTH, RED], [$5]
} (t=16)

PE(3,0):
{
  DATA_MOV, [WEST, RED] -> [WEST, RED]
} (t=3)
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=9)
{
  GEP, [WEST, RED] -> [NORTH, RED], [WEST, RED], [$1]
} (t=11)
{
  ZEXT, [$0] -> [WEST, RED]
} (t=12)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=14)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=16)
{
  STORE, [NORTH, RED], [$1]
} (t=19)

PE(0,1):
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=3)
{
  GRANT_ONCE, [] -> [EAST, RED]
} (t=5)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=6)
{
  ZEXT, [EAST, RED] -> [EAST, RED]
} (t=8)
{
  PHI, [NORTH, RED], [SOUTH, RED] -> [$0]
} (t=9)
{
  PHI, [NORTH, RED], [$0] -> [NORTH, RED], [EAST, RED]
} (t=10)
{
  LOAD, [EAST, RED] -> [EAST, RED]
} (t=11)
{
  ADD, [NORTH, RED], [EAST, RED] -> [EAST, RED]
} (t=15)
{
  CTRL_MOV, [NORTH, RED] -> [$1]
} (t=18)

PE(1,1):
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=2)
{
  DATA_MOV, [SOUTH, RED] -> [$1]
} (t=4)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=5)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [EAST, RED], [$0]
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=6)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED]
} (t=7)
{
  PHI, [SOUTH, RED], [EAST, RED] -> [SOUTH, RED], [EAST, RED], [$0]
} (t=8)
{
  PHI, [EAST, RED], [$0] -> [$0], [EAST, RED], [$1]
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=9)
{
  GEP, [$0], [EAST, RED] -> [$0], [WEST, RED]
} (t=10)
{
  LOAD, [$0] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
  DATA_MOV, [EAST, RED] -> [$2]
} (t=11)
{
  GRANT_PREDICATE, [$1], [EAST, RED] -> [$0]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=12)
{
  ADD, [$0], [#1] -> [$0], [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=13)
{
  ICMP_EQ, [$0], [EAST, RED] -> [$0]
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
  DATA_MOV, [NORTH, RED] -> [EAST, RED]
} (t=14)
{
  GRANT_PREDICATE, [$1], [$2] -> [$1]
} (t=15)
{
  NOT, [$0] -> [SOUTH, RED], [$0], [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
  CTRL_MOV, [EAST, RED] -> [$2]
} (t=16)
{
  GRANT_PREDICATE, [$1], [$0] -> [EAST, RED]
  CTRL_MOV, [SOUTH, RED] -> [$0]
} (t=17)

PE(2,1):
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=3)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=4)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=5)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=6)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [$0], [WEST, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=7)
{
  PHI, [WEST, RED], [$0] -> [WEST, RED], [$0]
} (t=8)
{
  PHI, [$1], [$0] -> [SOUTH, RED], [WEST, RED], [NORTH, RED], [$0]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=9)
{
  ADD, [$0], [#1] -> [$0], [$2]
  DATA_MOV, [WEST, RED] -> [$1]
} (t=10)
{
  ICMP_EQ, [$0], [$1] -> [$0], [WEST, RED], [$1]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=11)
{
  NOT, [$0] -> [$3], [EAST, RED], [NORTH, RED], [$4]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
  DATA_MOV, [WEST, RED] -> [$0]
} (t=12)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED], [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=13)
{
  GRANT_PREDICATE, [$2], [$3] -> [$1]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [$0]
} (t=14)
{
  ADD, [NORTH, RED], [$0] -> [SOUTH, RED]
  CTRL_MOV, [EAST, RED] -> [WEST, RED]
} (t=15)
{
  GRANT_PREDICATE, [$0], [$4] -> [NORTH, RED]
} (t=16)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=17)
{
  CTRL_MOV, [WEST, RED] -> [$2]
} (t=18)

PE(3,1):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=8)
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=9)
{
  GEP, [WEST, RED] -> [NORTH, RED]
} (t=10)
{
  GRANT_ONCE, [#0] -> [WEST, RED], [NORTH, RED]
} (t=11)
{
  GRANT_ONCE, [] -> [WEST, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=12)
{
  DATA_MOV, [WEST, RED] -> [$1]
} (t=13)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED]
} (t=14)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=15)
{
  MEMSET, [SOUTH, RED], [$0], [NORTH, RED]
} (t=17)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=18)

PE(0,2):
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=2)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=4)
{
  NOT, [$0] -> [NORTH, RED], [EAST, RED]
} (t=8)
{
  ICMP_SGT, [NORTH, RED], [#0] -> [EAST, RED], [$0], [$1], [NORTH, RED]
} (t=10)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=11)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [EAST, RED]
} (t=12)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=14)
{
  GRANT_PREDICATE, [EAST, RED], [$1] -> [EAST, RED]
} (t=15)
{
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=17)
{
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=20)

PE(1,2):
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=7)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=9)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=10)
{
  GRANT_PREDICATE, [NORTH, RED], [WEST, RED] -> [EAST, RED]
} (t=11)
{
  PHI, [EAST, RED], [$0] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
  DATA_MOV, [WEST, RED] -> [$2]
} (t=12)
{
  MUL, [NORTH, RED], [SOUTH, RED] -> [WEST, RED]
  DATA_MOV, [EAST, RED] -> [$0]
  DATA_MOV, [WEST, RED] -> [$1]
} (t=13)
{
  SHL, [$0], [$1] -> [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=14)
{
  GRANT_PREDICATE, [$2], [$0] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=16)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=17)
{
  CTRL_MOV, [EAST, RED] -> [$1]
} (t=18)
{
  CTRL_MOV, [EAST, RED] -> [WEST, RED]
} (t=19)

PE(2,2):
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=4)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=6)
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=8)
{
  GEP, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=10)
{
  ZEXT, [WEST, RED] -> [WEST, RED]
  DATA_MOV, [EAST, RED] -> [$1]
} (t=12)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [$0]
} (t=13)
{
  MUL, [$0], [$1] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=14)
{
  SHL, [SOUTH, RED], [NORTH, RED] -> [EAST, RED]
} (t=15)
{
  CTRL_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=17)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [WEST, RED]
} (t=18)

PE(3,2):
{
  LOAD, [SOUTH, RED] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [$0]
} (t=11)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [NORTH, RED]
} (t=12)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=13)
{
  STORE, [$0]
} (t=14)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=16)

PE(0,3):
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=5)
{
  DATA_MOV, [SOUTH, RED] -> [$1]
} (t=8)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [SOUTH, RED], [EAST, RED]
  DATA_MOV, [EAST, RED] -> [$3]
} (t=9)
{
  GRANT_ONCE, [#2] -> [$2], [$0]
} (t=10)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=11)
{
  GRANT_PREDICATE, [$2], [$3] -> [EAST, RED]
} (t=12)

PE(1,3):
{
  GRANT_ONCE, [#0] -> [EAST, RED]
} (t=3)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=8)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=10)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=12)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=13)
{
  RETURN
} (t=14)
{
  DATA_MOV, [SOUTH, RED] -> [$1]
} (t=15)
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=16)
{
  MEMSET, [SOUTH, RED], [$0], [$1]
} (t=17)

PE(2,3):
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=4)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [SOUTH, RED]
} (t=5)
{
  LOAD, [SOUTH, RED] -> [WEST, RED]
} (t=11)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=12)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=13)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=14)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=15)

PE(3,3):
{
  GRANT_ONCE, [] -> [WEST, RED]
} (t=11)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=13)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [WEST, RED]
} (t=14)

