# Compiled II: 5

PE(1,1):
{
  GRANT_PREDICATE, [NORTH, RED], [EAST, RED] -> [EAST, RED]
} (t=5)
{
  GEP, [NORTH, RED] -> [$0]
} (t=6)
{
  LOAD, [$0] -> [NORTH, RED]
} (t=7)
{
  RETURN
} (t=8)

PE(2,1):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=4)
{
  ZEXT, [WEST, RED] -> [NORTH, RED]
} (t=6)

PE(3,1):
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED]
} (t=3)

PE(0,2):
{
  GRANT_ONCE, [#0] -> [EAST, RED]
} (t=2)
{
  GRANT_ONCE, [] -> [EAST, RED]
} (t=3)
{
  GEP, [EAST, RED] -> [NORTH, RED]
} (t=6)

PE(1,2):
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=3)
{
  GRANT_PREDICATE, [$0], [EAST, RED] -> [$0]
  DATA_MOV, [WEST, RED] -> [SOUTH, RED]
} (t=4)
{
  PHI, [EAST, RED], [$0] -> [SOUTH, RED], [WEST, RED], [$0]
} (t=5)
{
  ADD, [$0], [#1] -> [EAST, RED]
} (t=6)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED]
} (t=8)

PE(2,2):
{
  ICMP_SGT, [EAST, RED], [#0] -> [EAST, RED]
} (t=1)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=3)
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=6)
{
  ICMP_EQ, [WEST, RED], [SOUTH, RED] -> [$0]
} (t=7)
{
  NOT, [$0] -> [$1], [NORTH, RED]
} (t=8)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED]
} (t=9)

PE(3,2):
{
  CONSTANT, [#0] -> [WEST, RED]
} (t=0)
{
  GRANT_ONCE, [WEST, RED] -> [SOUTH, RED], [WEST, RED], [NORTH, RED]
} (t=2)

PE(0,3):
{
  GRANT_ONCE, [] -> [EAST, RED]
} (t=4)
{
  DATA_MOV, [SOUTH, RED] -> [$0]
} (t=6)
{
  LOAD, [SOUTH, RED] -> [EAST, RED]
} (t=7)
{
  STORE, [EAST, RED], [$0]
} (t=10)

PE(1,3):
{
  GRANT_PREDICATE, [WEST, RED], [EAST, RED] -> [$0]
} (t=5)
{
  PHI, [EAST, RED], [$0] -> [$0], [EAST, RED]
} (t=6)
{
  DATA_MOV, [WEST, RED] -> [$1]
} (t=8)
{
  FMUL_FADD, [$0], [SOUTH, RED], [$1] -> [WEST, RED]
} (t=9)

PE(2,3):
{
  DATA_MOV, [EAST, RED] -> [WEST, RED]
} (t=4)
{
  DATA_MOV, [WEST, RED] -> [$0]
} (t=7)
{
  DATA_MOV, [SOUTH, RED] -> [$1]
} (t=9)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED]
} (t=10)

PE(3,3):
{
  DATA_MOV, [SOUTH, RED] -> [WEST, RED]
} (t=3)

