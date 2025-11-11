# Compiled II: 5

PE(2,0):
{
  RETURN
} (t=6)

PE(3,0):
{
  DATA_MOV, [NORTH, RED] -> [$0]
} (t=6)
{
  STORE, [NORTH, RED], [$0]
} (t=7)

PE(2,1):
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=4)
{
  SHL, [$0], [NORTH, RED] -> [EAST, RED]
} (t=5)

PE(3,1):
{
  GEP, [NORTH, RED] -> [$0]
} (t=2)
{
  LOAD, [$0] -> [WEST, RED]
} (t=3)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED]
} (t=5)
{
  ADD, [WEST, RED], [NORTH, RED] -> [SOUTH, RED]
} (t=6)

PE(0,2):
{
  GRANT_ONCE, [#1] -> [EAST, RED]
} (t=2)

PE(1,2):
{
  PHI, [EAST, RED], [WEST, RED] -> [EAST, RED]
} (t=3)

PE(2,2):
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=2)
{
  GEP, [$0] -> [$0], [EAST, RED]
  DATA_MOV, [EAST, RED] -> [$1]
  DATA_MOV, [WEST, RED] -> [$0]
} (t=3)
{
  LOAD, [$0] -> [EAST, RED]
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
  DATA_MOV, [EAST, RED] -> [$1]
} (t=4)
{
  GRANT_PREDICATE, [$1], [EAST, RED] -> [EAST, RED]
} (t=5)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED]
} (t=7)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [$0]
} (t=0)
{
  PHI, [WEST, RED], [$0] -> [SOUTH, RED], [WEST, RED], [$0]
} (t=1)
{
  ADD, [$0], [#1] -> [$0], [WEST, RED]
} (t=2)
{
  ICMP_EQ, [$0], [#20] -> [$0]
} (t=3)
{
  NOT, [$0] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=4)
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=5)

