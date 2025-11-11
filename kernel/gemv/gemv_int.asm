# Compiled II: 12

PE(0,0):
{
  GRANT_ONCE, [#0] -> [NORTH, RED], [$0]
} (t=0)
{
  PHI, [NORTH, RED], [$0] -> [EAST, RED], [NORTH, RED]
} (t=1)
{
  GEP, [EAST, RED] -> [$0]
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=3)
{
  GEP, [$0], [$1] -> [$0]
} (t=4)
{
  LOAD, [$0] -> [NORTH, RED]
} (t=5)
{
  CTRL_MOV, [NORTH, RED] -> [$1]
} (t=12)

PE(1,0):
{
  SHL, [WEST, RED], [NORTH, RED] -> [WEST, RED]
} (t=2)

PE(0,1):
{
  GRANT_ONCE, [#4] -> [EAST, RED]
} (t=0)
{
  PHI, [$0], [SOUTH, RED] -> [EAST, RED], [$0]
} (t=1)
{
  PHI, [NORTH, RED], [$0] -> [SOUTH, RED], [EAST, RED], [$0]
  DATA_MOV, [SOUTH, RED] -> [$1]
} (t=2)
{
  ADD, [$0], [#1] -> [NORTH, RED]
} (t=3)
{
  PHI, [NORTH, RED], [$1] -> [NORTH, RED], [$0]
} (t=4)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [EAST, RED], [$0]
} (t=5)
{
  ADD, [$0], [#1] -> [$2], [$3]
  DATA_MOV, [SOUTH, RED] -> [$0]
  DATA_MOV, [NORTH, RED] -> [EAST, RED]
} (t=6)
{
  MUL, [EAST, RED], [$0] -> [EAST, RED]
  CTRL_MOV, [NORTH, RED] -> [$1]
} (t=7)
{
  ICMP_EQ, [$2], [#4] -> [$0]
  DATA_MOV, [EAST, RED] -> [EAST, RED]
} (t=8)
{
  NOT, [$0] -> [$2], [NORTH, RED], [$0], [EAST, RED]
} (t=9)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [$0]
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=10)
{
  GRANT_PREDICATE, [$3], [$2] -> [SOUTH, RED]
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
  CTRL_MOV, [NORTH, RED] -> [$2]
} (t=11)

PE(1,1):
{
  PHI, [NORTH, RED], [WEST, RED] -> [SOUTH, RED], [$2]
} (t=1)
{
  DATA_MOV, [WEST, RED] -> [$1]
} (t=2)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=3)
{
  GRANT_ONCE, [#0] -> [$0]
} (t=4)
{
  PHI, [EAST, RED], [$0] -> [EAST, RED], [$0]
} (t=5)
{
  PHI, [NORTH, RED], [$0] -> [$3]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=6)
{
  PHI, [NORTH, RED], [$1] -> [WEST, RED], [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=7)
{
  PHI, [$5], [$2] -> [$1], [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [$0]
} (t=8)
{
  ADD, [$0], [$3] -> [WEST, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=9)
{
  GRANT_PREDICATE, [$1], [$0] -> [$5]
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=10)
{
  CTRL_MOV, [NORTH, RED] -> [$4]
} (t=11)
{
  CTRL_MOV, [NORTH, RED] -> [$0]
  CTRL_MOV, [EAST, RED] -> [$6]
} (t=12)
{
  CTRL_MOV, [NORTH, RED] -> [$3]
} (t=15)

PE(2,1):
{
  GEP, [WEST, RED] -> [$0]
} (t=4)
{
  LOAD, [$0] -> [WEST, RED]
} (t=5)
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=6)
{
  PHI, [$1], [$0] -> [$2], [$0]
  DATA_MOV, [NORTH, RED] -> [$1]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=7)
{
  GRANT_PREDICATE, [$0], [$1] -> [$3]
  DATA_MOV, [WEST, RED] -> [$0]
} (t=8)
{
  GRANT_PREDICATE, [$2], [$0] -> [$1]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=9)
{
  GRANT_PREDICATE, [$3], [WEST, RED] -> [WEST, RED]
} (t=11)

PE(3,1):
{
  GEP, [WEST, RED] -> [WEST, RED]
} (t=8)

PE(0,2):
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=3)
{
  ICMP_EQ, [SOUTH, RED], [#4] -> [$0], [SOUTH, RED], [$2], [NORTH, RED], [EAST, RED]
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=4)
{
  NOT, [$0] -> [$1], [$5], [$4], [NORTH, RED], [EAST, RED], [SOUTH, RED]
} (t=5)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED]
} (t=6)
{
  RETURN
  DATA_MOV, [SOUTH, RED] -> [$0]
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=9)
{
  GRANT_PREDICATE, [$0], [$4] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=10)
{
  GRANT_PREDICATE, [SOUTH, RED], [$2] -> [EAST, RED]
} (t=11)
{
  GRANT_PREDICATE, [$0], [$5] -> [EAST, RED]
} (t=13)

PE(1,2):
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=4)
{
  DATA_MOV, [WEST, RED] -> [$2]
  DATA_MOV, [WEST, RED] -> [EAST, RED]
} (t=5)
{
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=7)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [WEST, RED]
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=8)
{
  GRANT_PREDICATE, [SOUTH, RED], [$1] -> [$0]
} (t=9)
{
  GRANT_PREDICATE, [SOUTH, RED], [$2] -> [SOUTH, RED]
} (t=10)
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [SOUTH, RED]
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=11)
{
  STORE, [WEST, RED], [$0]
} (t=12)
{
  CTRL_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=14)

PE(2,2):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=6)

PE(0,3):
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=5)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED]
} (t=6)

PE(1,3):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=6)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=7)

