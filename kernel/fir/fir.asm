# Compiled II: 5

PE(0,1):
{
  GRANT_ONCE, [#0] -> [$0]
} (t=3)
{
  PHI, [NORTH, RED], [$0] -> [EAST, RED]
} (t=4)

PE(1,1):
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED]
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=5)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [EAST, RED]
} (t=8)

PE(2,1):
{
  LOAD, [EAST, RED] -> [NORTH, RED]
} (t=3)
{
  RETURN, [WEST, RED]
} (t=9)

PE(3,1):
{
  GEP, [NORTH, RED] -> [WEST, RED]
} (t=2)

PE(0,2):
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=6)
{
  GRANT_PREDICATE, [EAST, RED], [$0] -> [SOUTH, RED]
} (t=8)

PE(1,2):
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=4)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=5)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=6)
{
  ADD, [NORTH, RED], [$0] -> [WEST, RED], [SOUTH, RED]
} (t=7)

PE(2,2):
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=2)
{
  ICMP_EQ, [EAST, RED], [#32] -> [$0], [WEST, RED]
} (t=3)
{
  NOT, [$0] -> [$1], [WEST, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=4)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED]
} (t=5)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [$0]
} (t=0)
{
  PHI, [WEST, RED], [$0] -> [NORTH, RED], [SOUTH, RED], [$0]
} (t=1)
{
  ADD, [$0], [#1] -> [WEST, RED]
} (t=2)

PE(1,3):
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED]
} (t=6)

PE(2,3):
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=4)
{
  MUL, [SOUTH, RED], [$0] -> [WEST, RED]
} (t=5)

PE(3,3):
{
  GEP, [SOUTH, RED] -> [$0]
} (t=2)
{
  LOAD, [$0] -> [WEST, RED]
} (t=3)

