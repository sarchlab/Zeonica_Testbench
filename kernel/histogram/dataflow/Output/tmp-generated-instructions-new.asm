# Compiled II: 5

PE(1,1):
{
  SEXT, [NORTH, RED] -> [$0]
} (t=8)
{
  GEP, [$0] -> [$0], [NORTH, RED]
} (t=9)
{
  LOAD, [$0] -> [NORTH, RED]
} (t=10)

PE(3,1):
{
  GEP, [NORTH, RED] -> [NORTH, RED]
} (t=2)

PE(1,2):
{
  CAST_FPTOSI, [EAST, RED] -> [SOUTH, RED]
} (t=7)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=10)
{
  ADD, [SOUTH, RED], [#1] -> [NORTH, RED]
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
  FDIV, [NORTH, RED], [#18.000000] -> [WEST, RED]
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
} (t=12)

PE(1,3):
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=11)
{
  STORE, [SOUTH, RED], [$0]
} (t=12)

PE(2,3):
{
  FMUL, [EAST, RED], [#5.000000] -> [SOUTH, RED]
} (t=5)

PE(3,3):
{
  FADD, [SOUTH, RED], [#-1.000000] -> [WEST, RED]
} (t=4)

