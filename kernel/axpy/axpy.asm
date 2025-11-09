# Compiled II: 5

PE(0,0):
{
  RETURN
} (t=5)

PE(1,1):
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=4)

PE(2,1):
{
  LOAD, [EAST, RED] -> [WEST, RED]
} (t=3)
{
  DATA_MOV, [EAST, RED] -> [NORTH, RED]
} (t=4)

PE(3,1):
{
  GEP, [NORTH, RED] -> [WEST, RED], [NORTH, RED]
} (t=2)
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED]
} (t=3)

PE(0,2):
{
  GRANT_ONCE, [#2.500000] -> [EAST, RED]
} (t=2)

PE(1,2):
{
  PHI, [EAST, RED], [WEST, RED] -> [$0], [EAST, RED]
} (t=3)
{
  FMUL_FADD, [EAST, RED], [$0], [SOUTH, RED] -> [NORTH, RED]
} (t=5)
{
  CTRL_MOV, [EAST, RED] -> [$0]
} (t=7)

PE(2,2):
{
  ICMP_EQ, [EAST, RED], [#20] -> [$0]
} (t=3)
{
  NOT, [$0] -> [$2], [$1]
  DATA_MOV, [EAST, RED] -> [WEST, RED]
  DATA_MOV, [WEST, RED] -> [$0]
} (t=4)
{
  GRANT_PREDICATE, [SOUTH, RED], [$2] -> [EAST, RED]
} (t=5)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED]
} (t=6)

PE(3,2):
{
  GRANT_ONCE, [#0] -> [$0]
} (t=0)
{
  PHI, [WEST, RED], [$0] -> [NORTH, RED], [SOUTH, RED], [$0]
} (t=1)
{
  ADD, [$0], [#1] -> [WEST, RED], [SOUTH, RED]
} (t=2)
{
  LOAD, [NORTH, RED] -> [WEST, RED]
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=3)

PE(1,3):
{
  STORE, [SOUTH, RED], [EAST, RED]
} (t=6)

PE(2,3):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=5)

PE(3,3):
{
  GEP, [SOUTH, RED] -> [SOUTH, RED]
} (t=2)
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=4)

