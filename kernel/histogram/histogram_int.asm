# Compiled II: 5

PE(1,1):
{
  GEP, [NORTH, RED] -> [$0], [NORTH, RED]
} (t=8)
{
  LOAD, [$0] -> [$0]
} (t=9)
{
  ADD, [$0], [#1] -> [NORTH, RED]
} (t=10)

PE(3,1):
{
  GEP, [NORTH, RED] -> [NORTH, RED]
} (t=2)

PE(1,2):
{
  SEXT, [EAST, RED] -> [SOUTH, RED]
} (t=7)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=9)
{
  STORE, [SOUTH, RED], [$0]
} (t=11)

PE(2,2):
{
  DATA_MOV, [EAST, RED] -> [$0]
} (t=2)
{
  ICMP_EQ, [EAST, RED], [#20] -> [$0]
} (t=3)
{
  NOT, [$0] -> [$1]
} (t=4)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED]
} (t=5)
{
  DIV, [NORTH, RED], [#18] -> [WEST, RED]
} (t=6)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [$0]
} (t=0)
{
  PHI, [WEST, RED], [$0] -> [SOUTH, RED], [$0]
} (t=1)
{
  ADD, [$0], [#1] -> [WEST, RED]
} (t=2)
{
  LOAD, [SOUTH, RED] -> [NORTH, RED]
} (t=3)

PE(0,3):
{
  RETURN
} (t=11)

PE(2,3):
{
  ADD, [EAST, RED], [#-5] -> [SOUTH, RED]
} (t=5)

PE(3,3):
{
  MUL, [SOUTH, RED], [#5] -> [WEST, RED]
} (t=4)

