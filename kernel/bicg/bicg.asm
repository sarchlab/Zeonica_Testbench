# Compiled II: 12

PE(0,0):
{
  CONSTANT, [#0] -> [EAST, RED]
} (t=0)
{
  GRANT_ONCE, [] -> [EAST, RED]
} (t=2)
{
  GRANT_ONCE, [#0] -> [NORTH, RED]
} (t=3)
{
  ICMP, [EAST, RED] -> [NORTH, RED], [EAST, RED], [$0], [$1]
} (t=4)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [NORTH, RED], [$0]
} (t=6)
{
  PHI, [NORTH, RED], [$0] -> [EAST, RED], [NORTH, RED], [$0]
} (t=8)
{
  PHI, [$2], [$0] -> [NORTH, RED], [$2], [EAST, RED]
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=9)
{
  GEP, [$0] -> [NORTH, RED]
} (t=11)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=12)
{
  GRANT_PREDICATE, [NORTH, RED], [$1] -> [NORTH, RED]
} (t=13)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=14)
{
  DATA_MOV, [SOUTH, RED] -> [$3]
} (t=15)
{
  GRANT_PREDICATE, [$2], [$3] -> [$2]
} (t=17)
{
  CTRL_MOV, [SOUTH, RED] -> [$3]
} (t=19)

PE(1,0):
{
  ICMP, [WEST, RED] -> [EAST, RED]
} (t=1)
{
  GRANT_PREDICATE, [WEST, RED], [EAST, RED] -> [WEST, RED], [EAST, RED]
} (t=3)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=4)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=5)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=9)
{
  DATA_MOV, [SOUTH, RED] -> [$1]
  DATA_MOV, [EAST, RED] -> [$0]
} (t=10)
{
  GEP, [$1] -> [WEST, RED], [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [EAST, RED]
} (t=11)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [NORTH, RED]
} (t=12)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=13)

PE(2,0):
{
  GRANT_ONCE, [WEST, RED] -> [WEST, RED], [NORTH, RED], [EAST, RED], [$1]
} (t=2)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=4)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=5)
{
  GEP, [WEST, RED] -> [WEST, RED], [NORTH, RED]
} (t=10)
{
  NOT, [$1] -> [EAST, RED]
  DATA_MOV, [WEST, RED] -> [WEST, RED]
} (t=12)
{
  CONSTANT, [#0] -> [NORTH, RED]
} (t=13)

PE(3,0):
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=2)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=3)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [$0]
} (t=13)
{
  ICMP, [$0]
} (t=14)

PE(0,1):
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=4)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=5)
{
  PHI, [NORTH, RED], [SOUTH, RED] -> [$2], [$0]
} (t=7)
{
  PHI, [NORTH, RED], [$0] -> [EAST, RED], [NORTH, RED], [SOUTH, RED], [$0]
} (t=8)
{
  ADD, [$0] -> [EAST, RED], [NORTH, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=9)
{
  GEP, [$0] -> [$0]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=10)
{
  PHI, [NORTH, RED], [$0] -> [NORTH, RED], [EAST, RED]
} (t=11)
{
  PHI, [$3], [$2] -> [$2], [$0]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [$1]
} (t=12)
{
  LOAD, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [$4]
} (t=13)
{
  PHI, [NORTH, RED], [SOUTH, RED] -> [NORTH, RED], [EAST, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [$3]
} (t=14)
{
  GRANT_PREDICATE, [$0], [$1] -> [NORTH, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=15)
{
  GRANT_PREDICATE, [$2], [$3] -> [$3]
  CTRL_MOV, [SOUTH, RED] -> [$1]
} (t=16)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=17)
{
  GRANT_PREDICATE, [$4], [$0] -> [EAST, RED]
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=18)
{
  CTRL_MOV, [SOUTH, RED] -> [$1]
} (t=20)
{
  CTRL_MOV, [SOUTH, RED] -> [$5]
} (t=21)

PE(1,1):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
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
  PHI, [WEST, RED], [$0] -> [$0]
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=9)
{
  PHI, [NORTH, RED], [$0] -> [$1], [NORTH, RED], [$2]
  DATA_MOV, [EAST, RED] -> [$0]
} (t=10)
{
  ICMP, [$0], [$1] -> [NORTH, RED], [SOUTH, RED], [EAST, RED], [$3], [WEST, RED], [$0]
} (t=11)
{
  GRANT_PREDICATE, [$2], [$0] -> [WEST, RED]
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=12)
{
  ADD, [SOUTH, RED] -> [$0], [$2]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [NORTH, RED] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [$1]
} (t=13)
{
  ICMP, [$0], [$1] -> [NORTH, RED]
  CTRL_MOV, [SOUTH, RED] -> [$1]
} (t=14)
{
  PHI, [NORTH, RED], [WEST, RED] -> [NORTH, RED], [$0]
} (t=15)
{
  GRANT_PREDICATE, [$0], [$3] -> [NORTH, RED]
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=16)
{
  GRANT_PREDICATE, [$2], [$0] -> [WEST, RED]
} (t=17)
{
  CTRL_MOV, [SOUTH, RED] -> [$4]
} (t=18)
{
  CTRL_MOV, [EAST, RED] -> [$2]
} (t=19)

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
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [WEST, RED]
} (t=6)
{
  GRANT_PREDICATE, [$1], [WEST, RED] -> [EAST, RED]
} (t=7)
{
  PHI, [NORTH, RED], [EAST, RED] -> [$0]
} (t=9)
{
  PHI, [NORTH, RED], [$0] -> [NORTH, RED], [$0]
} (t=10)
{
  PHI, [NORTH, RED], [SOUTH, RED] -> [NORTH, RED], [WEST, RED]
} (t=11)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [WEST, RED], [EAST, RED]
} (t=12)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=13)
{
  STORE, [SOUTH, RED]
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=14)
{
  CTRL_MOV, [SOUTH, RED] -> [$2]
} (t=15)
{
  CTRL_MOV, [SOUTH, RED] -> [$3]
} (t=16)
{
  CTRL_MOV, [SOUTH, RED] -> [$4]
} (t=17)

PE(3,1):
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=4)
{
  ZEXT, [WEST, RED] -> [WEST, RED]
} (t=8)
{
  DATA_MOV, [WEST, RED] -> [WEST, RED]
} (t=13)

PE(0,2):
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=9)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=10)
{
  GEP, [SOUTH, RED], [$0] -> [EAST, RED], [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=11)
{
  LOAD, [SOUTH, RED] -> [$2]
} (t=12)
{
  LOAD, [SOUTH, RED] -> [$1]
  DATA_MOV, [SOUTH, RED] -> [$0]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=13)
{
  FMUL_FADD, [$0], [$1], [EAST, RED] -> [NORTH, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=14)
{
  FMUL_FADD, [$2], [NORTH, RED], [$0] -> [EAST, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
  DATA_MOV, [WEST, RED] -> [$1]
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=15)
{
  STORE, [$0], [SOUTH, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=16)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED]
} (t=18)
{
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=19)
{
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=20)

PE(1,2):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=10)
{
  DATA_MOV, [EAST, RED] -> [$2]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=11)
{
  NOT, [SOUTH, RED] -> [$3], [$6], [SOUTH, RED], [EAST, RED], [$1], [$4], [WEST, RED]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=12)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=13)
{
  GRANT_PREDICATE, [$2], [$3] -> [WEST, RED]
} (t=14)
{
  NOT, [SOUTH, RED] -> [SOUTH, RED], [$3], [WEST, RED], [EAST, RED]
  DATA_MOV, [WEST, RED] -> [$1]
} (t=15)
{
  STORE, [WEST, RED], [$0]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=16)
{
  GRANT_PREDICATE, [$0], [$4] -> [SOUTH, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=17)
{
  GRANT_PREDICATE, [$1], [$6] -> [WEST, RED]
} (t=18)
{
  GRANT_PREDICATE, [$0], [$3] -> [WEST, RED]
} (t=19)

PE(2,2):
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=5)
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=6)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [WEST, RED]
} (t=9)
{
  DATA_MOV, [NORTH, RED] -> [$2]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=11)
{
  LOAD, [SOUTH, RED] -> [WEST, RED]
  DATA_MOV, [EAST, RED] -> [$0]
} (t=12)
{
  DATA_MOV, [EAST, RED] -> [$1]
} (t=13)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=14)
{
  GRANT_PREDICATE, [$2], [$0] -> [SOUTH, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=15)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [SOUTH, RED]
} (t=16)

PE(3,2):
{
  CONSTANT, [#0] -> [$0]
} (t=13)
{
  STORE, [$0]
} (t=14)

PE(0,3):
{
  LOAD, [SOUTH, RED] -> [SOUTH, RED]
} (t=12)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=14)
{
  STORE, [SOUTH, RED], [EAST, RED]
} (t=15)

PE(1,3):
{
  GRANT_ONCE, [] -> [EAST, RED]
} (t=3)
{
  LOAD, [SOUTH, RED] -> [WEST, RED]
} (t=13)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=14)

PE(2,3):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=4)
{
  GRANT_ONCE, [#0.000000] -> [SOUTH, RED]
} (t=8)
{
  RETURN
} (t=14)

