# Compiled II: 6

PE(0,0):
{
  CONSTANT, [#0] -> [EAST, RED]
} (t=0)
{
  GRANT_ONCE, [] -> [EAST, RED]
} (t=2)

PE(1,0):
{
  ICMP_SGT, [WEST, RED], [#0] -> [NORTH, RED]
} (t=1)
{
  GRANT_PREDICATE, [WEST, RED], [NORTH, RED] -> [NORTH, RED]
} (t=3)

PE(2,0):
{
  GRANT_ONCE, [#0] -> [NORTH, RED]
} (t=2)

PE(0,1):
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=3)

PE(1,1):
{
  GRANT_ONCE, [SOUTH, RED] -> [SOUTH, RED], [EAST, RED], [WEST, RED]
} (t=2)
{
  ZEXT, [SOUTH, RED] -> [NORTH, RED]
} (t=4)
{
  GEP, [EAST, RED] -> [NORTH, RED], [EAST, RED]
} (t=5)

PE(2,1):
{
  GRANT_PREDICATE, [SOUTH, RED], [WEST, RED] -> [$0]
} (t=3)
{
  PHI, [$1], [$0] -> [EAST, RED], [WEST, RED], [$0]
} (t=4)
{
  ADD, [$0], [#1] -> [NORTH, RED], [$0]
} (t=5)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
} (t=6)
{
  GRANT_PREDICATE, [$0], [NORTH, RED] -> [$1]
} (t=8)

PE(3,1):
{
  GEP, [WEST, RED] -> [NORTH, RED]
} (t=5)

PE(0,2):
{
  GRANT_ONCE, [] -> [$0]
  DATA_MOV, [SOUTH, RED] -> [$1]
} (t=4)
{
  GRANT_PREDICATE, [$0], [$1] -> [$0]
} (t=5)
{
  PHI, [EAST, RED], [$0] -> [EAST, RED]
} (t=6)
{
  CTRL_MOV, [EAST, RED] -> [$1]
} (t=11)

PE(1,2):
{
  PHI, [EAST, RED], [SOUTH, RED] -> [EAST, RED]
} (t=5)
{
  LOAD, [SOUTH, RED] -> [$1]
  DATA_MOV, [WEST, RED] -> [$1]
} (t=6)
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=7)
{
  FMUL_FADD, [$0], [EAST, RED], [$1] -> [EAST, RED]
} (t=8)
{
  CTRL_MOV, [EAST, RED] -> [$0]
} (t=9)
{
  GRANT_PREDICATE, [$1], [EAST, RED] -> [WEST, RED]
} (t=10)

PE(2,2):
{
  DATA_MOV, [WEST, RED] -> [$1]
} (t=5)
{
  ICMP_EQ, [SOUTH, RED], [WEST, RED] -> [$0]
} (t=6)
{
  NOT, [$0] -> [SOUTH, RED], [EAST, RED], [$2]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=7)
{
  GRANT_PREDICATE, [$1], [$2] -> [WEST, RED]
} (t=8)
{
  STORE, [WEST, RED], [$0]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=9)

PE(3,2):
{
  LOAD, [SOUTH, RED] -> [WEST, RED]
} (t=6)
{
  DATA_MOV, [WEST, RED] -> [WEST, RED]
} (t=8)

PE(0,3):
{
  RETURN
} (t=8)

