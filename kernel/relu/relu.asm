# Compiled II: 5

PE(2,1):
{
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=5)
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=8)
{
  GRANT_PREDICATE, [$0], [$1] -> [NORTH, RED]
} (t=9)

PE(3,1):
{
  CAST_TRUNC, [NORTH, RED] -> [$0], [NORTH, RED]
} (t=2)
{
  DIV, [$0], [#70] -> [NORTH, RED]
} (t=3)

PE(1,2):
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=6)
{
  DATA_MOV, [NORTH, RED] -> [$1]
} (t=7)
{
  GEP, [$0], [$1] -> [NORTH, RED]
} (t=8)
{
  RETURN
} (t=9)

PE(2,2):
{
  DATA_MOV, [EAST, RED] -> [$2]
} (t=1)
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=2)
{
  ICMP_EQ, [EAST, RED], [#4200] -> [$0]
} (t=3)
{
  NOT, [$0] -> [$1], [SOUTH, RED]
} (t=4)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=5)
{
  PHI, [SOUTH, RED], [$2] -> [NORTH, RED], [SOUTH, RED]
} (t=7)
{
  CTRL_MOV, [SOUTH, RED] -> [$0]
} (t=10)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [WEST, RED], [$0]
} (t=0)
{
  PHI, [WEST, RED], [$0] -> [SOUTH, RED], [$0]
} (t=1)
{
  ADD, [$0], [#1] -> [WEST, RED]
} (t=2)
{
  REM, [SOUTH, RED], [#70] -> [NORTH, RED]
} (t=3)
{
  ZEXT, [SOUTH, RED] -> [NORTH, RED], [WEST, RED]
} (t=4)

PE(1,3):
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=6)
{
  STORE, [EAST, RED], [SOUTH, RED]
} (t=9)

PE(2,3):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=5)
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=7)
{
  SEL, [EAST, RED], [$0], [SOUTH, RED] -> [WEST, RED]
} (t=8)

PE(3,3):
{
  ZEXT, [SOUTH, RED] -> [$0], [WEST, RED]
} (t=4)
{
  GEP, [SOUTH, RED], [$0] -> [$0]
} (t=5)
{
  LOAD, [$0] -> [$0], [WEST, RED]
} (t=6)
{
  ICMP_SGE, [$0], [#0] -> [WEST, RED]
} (t=7)

