# Compiled II: 16

PE(0,0):
{
  GRANT_ONCE, [#2147483644] -> [$0]
} (t=4)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [EAST, RED]
} (t=5)
{
  DATA_MOV, [NORTH, RED] -> [EAST, RED]
} (t=6)
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=13)
{
  ICMP, [NORTH, RED] -> [NORTH, RED]
} (t=14)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=15)
{
  GEP, [$0] -> [NORTH, RED]
} (t=17)
{
  GEP, [NORTH, RED] -> [EAST, RED]
} (t=18)
{
  LOAD, [EAST, RED] -> [NORTH, RED]
} (t=19)

PE(1,0):
{
  DATA_MOV, [SOUTH, RED] -> [$1]
} (t=2)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=4)
{
  GRANT_ONCE, [#3] -> [$0]
} (t=5)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0], [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=6)
{
  AND, [WEST, RED], [$0] -> [NORTH, RED], [EAST, RED]
} (t=7)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=8)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=10)
{
  GRANT_ONCE, [#1] -> [EAST, RED]
} (t=11)
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED]
} (t=12)
{
  DATA_MOV, [NORTH, RED] -> [EAST, RED]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=14)
{
  GEP, [EAST, RED] -> [WEST, RED]
} (t=18)
{
  LOAD, [WEST, RED] -> [EAST, RED]
} (t=19)

PE(2,0):
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED]
} (t=3)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=5)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=6)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [WEST, RED]
} (t=7)
{
  GRANT_PREDICATE, [WEST, RED], [$0] -> [$0]
  DATA_MOV, [SOUTH, RED] -> [$1]
} (t=8)
{
  PHI, [EAST, RED], [$0] -> [EAST, RED], [WEST, RED]
} (t=9)
{
  DATA_MOV, [SOUTH, RED] -> [$2]
} (t=11)
{
  GRANT_PREDICATE, [$1], [$0] -> [$0]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=12)
{
  PHI, [$0], [NORTH, RED] -> [WEST, RED]
} (t=13)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=15)
{
  OR, [$2], [NORTH, RED] -> [EAST, RED], [WEST, RED], [$0]
} (t=17)
{
  GEP, [$0] -> [$0]
} (t=18)
{
  LOAD, [$0] -> [EAST, RED]
} (t=19)
{
  SEXT, [WEST, RED] -> [EAST, RED]
} (t=20)
{
  LOAD, [NORTH, RED] -> [NORTH, RED]
} (t=21)
{
  LOAD, [EAST, RED] -> [NORTH, RED]
} (t=22)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=24)

PE(3,0):
{
  DATA_MOV, [EAST, RED] -> [$1]
} (t=10)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=12)
{
  GEP, [$0] -> [NORTH, RED]
  DATA_MOV, [SOUTH, RED] -> [$2]
} (t=16)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=18)
{
  SEXT, [NORTH, RED] -> [NORTH, RED]
} (t=19)
{
  SEXT, [WEST, RED] -> [$0]
} (t=20)
{
  GEP, [WEST, RED] -> [WEST, RED]
} (t=21)
{
  GEP, [$0] -> [NORTH, RED]
} (t=22)
{
  LOAD, [NORTH, RED] -> [WEST, RED]
} (t=23)
{
  GRANT_PREDICATE, [$1], [$2] -> [WEST, RED]
} (t=24)

PE(0,1):
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=4)
{
  ZEXT, [$0] -> [SOUTH, RED], [EAST, RED]
} (t=5)
{
  DATA_MOV, [EAST, RED] -> [EAST, RED]
} (t=6)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=7)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=12)
{
  PHI, [$0], [EAST, RED] -> [SOUTH, RED], [EAST, RED]
  DATA_MOV, [WEST, RED] -> [$2]
} (t=13)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=14)
{
  NOT, [SOUTH, RED] -> [$0], [NORTH, RED], [EAST, RED]
} (t=15)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [$0]
} (t=16)
{
  PHI, [NORTH, RED], [$0] -> [NORTH, RED], [SOUTH, RED], [EAST, RED], [$0]
} (t=17)
{
  ADD, [$0] -> [NORTH, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
  DATA_MOV, [WEST, RED] -> [$1]
} (t=18)
{
  LOAD, [$0] -> [NORTH, RED]
} (t=19)
{
  SEXT, [SOUTH, RED] -> [EAST, RED]
} (t=20)
{
  LOAD, [NORTH, RED] -> [NORTH, RED]
} (t=22)
{
  RETURN
} (t=23)
{
  GRANT_PREDICATE, [$1], [$2] -> [EAST, RED]
  CTRL_MOV, [NORTH, RED] -> [EAST, RED]
} (t=24)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=25)
{
  CTRL_MOV, [SOUTH, RED] -> [$1]
} (t=27)

PE(1,1):
{
  ICMP, [NORTH, RED] -> [EAST, RED]
} (t=1)
{
  GRANT_PREDICATE, [NORTH, RED], [EAST, RED] -> [WEST, RED], [$0]
} (t=3)
{
  ICMP, [$0] -> [WEST, RED], [NORTH, RED], [$6], [EAST, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=4)
{
  DATA_MOV, [SOUTH, RED] -> [$5]
} (t=5)
{
  GRANT_PREDICATE, [NORTH, RED], [EAST, RED] -> [WEST, RED], [$0], [EAST, RED]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=6)
{
  PHI, [$1], [$0] -> [$0]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=7)
{
  ADD, [$0] -> [$1], [$4]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=8)
{
  AND, [$0], [SOUTH, RED] -> [$0]
} (t=9)
{
  PHI, [$2], [$0] -> [$0], [$3]
} (t=10)
{
  ICMP, [$1], [$0] -> [$2], [EAST, RED], [$1], [WEST, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=11)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED]
} (t=12)
{
  NOT, [$2] -> [SOUTH, RED], [$1], [WEST, RED], [NORTH, RED], [$0], [EAST, RED]
} (t=13)
{
  GRANT_PREDICATE, [$3], [$0] -> [$2]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=14)
{
  GRANT_PREDICATE, [$4], [$1] -> [$1]
} (t=15)
{
  GRANT_PREDICATE, [$5], [$6] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=16)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=17)
{
  GEP, [WEST, RED] -> [EAST, RED]
} (t=18)
{
  GEP, [WEST, RED] -> [EAST, RED]
} (t=21)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=24)
{
  CTRL_MOV, [WEST, RED] -> [NORTH, RED]
} (t=25)
{
  CTRL_MOV, [WEST, RED] -> [EAST, RED]
} (t=26)

PE(2,1):
{
  GRANT_ONCE, [WEST, RED] -> [WEST, RED], [NORTH, RED], [SOUTH, RED], [$1], [EAST, RED]
} (t=2)
{
  NOT, [WEST, RED] -> [NORTH, RED], [SOUTH, RED], [WEST, RED], [$3], [$2], [EAST, RED]
} (t=5)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
  DATA_MOV, [EAST, RED] -> [$0]
} (t=7)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=8)
{
  PHI, [$4], [$0] -> [$5], [EAST, RED], [WEST, RED], [SOUTH, RED], [NORTH, RED], [$0]
} (t=10)
{
  ADD, [$0] -> [$6], [$0]
} (t=11)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [SOUTH, RED]
} (t=12)
{
  GRANT_PREDICATE, [SOUTH, RED], [$1] -> [$0]
} (t=13)
{
  GRANT_PREDICATE, [NORTH, RED], [$2] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=14)
{
  GRANT_PREDICATE, [$0], [$3] -> [$0]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=15)
{
  PHI, [WEST, RED], [$0] -> [SOUTH, RED], [WEST, RED]
  DATA_MOV, [NORTH, RED] -> [$7]
} (t=16)
{
  GEP, [NORTH, RED] -> [EAST, RED]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=17)
{
  LOAD, [WEST, RED] -> [EAST, RED]
} (t=19)
{
  GEP, [$5] -> [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=20)
{
  LOAD, [WEST, RED] -> [$0]
  DATA_MOV, [NORTH, RED] -> [$4]
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=22)
{
  MUL, [$0], [$4] -> [$4]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=23)
{
  ADD, [EAST, RED], [$4] -> [EAST, RED]
  CTRL_MOV, [EAST, RED] -> [$4]
} (t=24)
{
  GRANT_PREDICATE, [$6], [$7] -> [$4]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=25)

PE(3,1):
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=3)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=6)
{
  GRANT_ONCE, [#2] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=11)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=15)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=16)
{
  LOAD, [SOUTH, RED] -> [NORTH, RED]
} (t=17)
{
  LOAD, [WEST, RED] -> [SOUTH, RED]
} (t=18)
{
  GEP, [SOUTH, RED] -> [WEST, RED]
} (t=19)
{
  SEXT, [WEST, RED] -> [$1]
  DATA_MOV, [SOUTH, RED] -> [$0]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=20)
{
  LOAD, [$0] -> [WEST, RED]
} (t=21)
{
  GEP, [$1] -> [SOUTH, RED], [WEST, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=22)
{
  LOAD, [SOUTH, RED] -> [WEST, RED]
} (t=23)
{
  STORE, [WEST, RED], [$0]
} (t=25)

PE(0,2):
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=8)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=11)
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=13)
{
  DATA_MOV, [WEST, RED] -> [$1]
  DATA_MOV, [NORTH, RED] -> [$2]
} (t=15)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [NORTH, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=16)
{
  LOAD, [EAST, RED] -> [$0]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=18)
{
  SEXT, [$0] -> [NORTH, RED]
  DATA_MOV, [NORTH, RED] -> [$3]
} (t=19)
{
  SEXT, [SOUTH, RED] -> [$0]
} (t=20)
{
  GEP, [$0] -> [SOUTH, RED], [EAST, RED]
} (t=21)
{
  LOAD, [NORTH, RED] -> [EAST, RED]
} (t=22)
{
  GRANT_PREDICATE, [$1], [$2] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=23)
{
  GRANT_PREDICATE, [$3], [EAST, RED] -> [SOUTH, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=26)
{
  STORE, [EAST, RED], [$0]
} (t=28)

PE(1,2):
{
  CONSTANT, [#0] -> [SOUTH, RED]
} (t=0)
{
  GRANT_ONCE, [] -> [SOUTH, RED]
} (t=2)
{
  GRANT_ONCE, [#0] -> [$0]
  DATA_MOV, [WEST, RED] -> [$1]
} (t=4)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED], [SOUTH, RED]
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=5)
{
  GRANT_PREDICATE, [SOUTH, RED], [EAST, RED] -> [SOUTH, RED]
} (t=7)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=8)
{
  DATA_MOV, [NORTH, RED] -> [$0]
  DATA_MOV, [EAST, RED] -> [$2]
} (t=9)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED]
} (t=10)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=14)
{
  PHI, [SOUTH, RED], [$2] -> [WEST, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=15)
{
  GEP, [EAST, RED] -> [WEST, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
  DATA_MOV, [EAST, RED] -> [$0]
} (t=17)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [EAST, RED]
} (t=19)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=22)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
  DATA_MOV, [SOUTH, RED] -> [$3]
} (t=23)
{
  ADD, [WEST, RED], [NORTH, RED] -> [NORTH, RED]
} (t=24)
{
  NOT, [EAST, RED] -> [WEST, RED], [EAST, RED], [$4]
} (t=25)
{
  CTRL_MOV, [NORTH, RED] -> [$0]
} (t=26)
{
  GRANT_PREDICATE, [$3], [$4] -> [EAST, RED]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=27)

PE(2,2):
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=3)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=6)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=9)
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=10)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=11)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
  DATA_MOV, [EAST, RED] -> [$3]
} (t=13)
{
  PHI, [$1], [SOUTH, RED] -> [$1], [$2]
} (t=15)
{
  OR, [$0], [$1] -> [EAST, RED], [WEST, RED], [SOUTH, RED]
} (t=16)
{
  GEP, [EAST, RED] -> [$0]
} (t=17)
{
  LOAD, [$0] -> [NORTH, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=18)
{
  GEP, [EAST, RED] -> [NORTH, RED]
} (t=19)
{
  PHI, [$4], [WEST, RED] -> [$0]
} (t=20)
{
  LOAD, [SOUTH, RED] -> [NORTH, RED]
} (t=21)
{
  ADD, [$0] -> [$0], [$4]
  DATA_MOV, [SOUTH, RED] -> [$1]
} (t=22)
{
  MUL, [NORTH, RED], [SOUTH, RED] -> [EAST, RED]
} (t=23)
{
  ICMP, [$0], [$1] -> [WEST, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=24)
{
  MUL, [$0], [NORTH, RED] -> [$0]
} (t=25)
{
  ADD, [SOUTH, RED], [$0] -> [WEST, RED]
  DATA_MOV, [EAST, RED] -> [$0]
} (t=26)
{
  GRANT_PREDICATE, [$2], [$3] -> [$1]
} (t=27)
{
  GRANT_PREDICATE, [$4], [$0] -> [$4]
  CTRL_MOV, [WEST, RED] -> [NORTH, RED]
} (t=28)

PE(3,2):
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=4)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=7)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=10)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=12)
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED]
} (t=16)
{
  DATA_MOV, [EAST, RED] -> [$0]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=17)
{
  SEXT, [SOUTH, RED] -> [WEST, RED]
} (t=18)
{
  GEP, [$0] -> [SOUTH, RED]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=19)
{
  LOAD, [NORTH, RED] -> [NORTH, RED]
} (t=20)
{
  GEP, [SOUTH, RED] -> [$1], [$2]
} (t=21)
{
  LOAD, [$1] -> [$1]
} (t=22)
{
  ADD, [$1], [WEST, RED] -> [$1]
} (t=24)
{
  STORE, [$1], [$2]
} (t=25)

PE(0,3):
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=17)
{
  GEP, [SOUTH, RED] -> [$1]
} (t=19)
{
  GEP, [SOUTH, RED] -> [EAST, RED]
  DATA_MOV, [WEST, RED] -> [$0]
} (t=20)
{
  LOAD, [$0] -> [EAST, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=21)
{
  LOAD, [$1] -> [EAST, RED]
} (t=22)
{
  STORE, [EAST, RED], [$0]
} (t=25)

PE(1,3):
{
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=15)
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=16)
{
  PHI, [SOUTH, RED], [WEST, RED] -> [SOUTH, RED]
} (t=18)
{
  GEP, [EAST, RED] -> [WEST, RED]
} (t=19)
{
  GEP, [EAST, RED] -> [WEST, RED]
} (t=20)
{
  LOAD, [WEST, RED] -> [EAST, RED]
} (t=21)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=22)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
  DATA_MOV, [NORTH, RED] -> [$1]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=23)
{
  ADD, [SOUTH, RED], [EAST, RED] -> [WEST, RED]
} (t=24)
{
  STORE, [SOUTH, RED], [$1]
} (t=25)

PE(2,3):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=15)
{
  GEP, [EAST, RED] -> [$0]
} (t=16)
{
  LOAD, [$0] -> [$0]
} (t=17)
{
  SEXT, [$0] -> [WEST, RED]
} (t=18)
{
  SEXT, [SOUTH, RED] -> [WEST, RED]
} (t=19)
{
  LOAD, [SOUTH, RED] -> [$0]
} (t=20)
{
  PHI, [SOUTH, RED], [EAST, RED] -> [SOUTH, RED], [WEST, RED]
} (t=21)
{
  MUL, [$0], [SOUTH, RED] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
  DATA_MOV, [WEST, RED] -> [$0]
} (t=22)
{
  MUL, [WEST, RED], [$0] -> [WEST, RED]
} (t=23)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=24)
{
  CTRL_MOV, [WEST, RED] -> [EAST, RED]
} (t=25)
{
  CTRL_MOV, [NORTH, RED] -> [$1]
} (t=29)

PE(3,3):
{
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=8)
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=11)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0]
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=13)
{
  PHI, [WEST, RED], [$0] -> [$0], [WEST, RED]
} (t=14)
{
  OR, [$1], [$0] -> [$0], [WEST, RED], [SOUTH, RED]
} (t=15)
{
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=18)
{
  GEP, [$0] -> [SOUTH, RED]
} (t=19)
{
  GRANT_PREDICATE, [$1], [SOUTH, RED] -> [WEST, RED]
} (t=20)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=21)
{
  CTRL_MOV, [EAST, RED] -> [$2]
} (t=23)

