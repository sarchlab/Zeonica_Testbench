# Compiled II: 11

PE(0,0):
{
  CONSTANT, [arg0] -> [NORTH, RED] (t=0, inv_iters=0)
} (idx_per_ii=0)
{
  ZEXT, [EAST, RED] -> [EAST, RED] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_ONCE, [arg1] -> [NORTH, RED], [$3] (t=2, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [EAST, RED] -> [$2] (t=4, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$0] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GRANT_ONCE, [arg0] -> [NORTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [NORTH, RED] -> [$1] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  GRANT_PREDICATE, [$0], [$1] -> [EAST, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  NOT, [$2] -> [$0], [NORTH, RED], [EAST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  GRANT_PREDICATE, [$3], [$0] -> [$0], [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ICMP_SGT, [$0], [#0] -> [EAST, RED], [NORTH, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(1,0):
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [WEST, RED] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [NORTH, RED] -> [NORTH, RED] (t=12, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  SHL, [WEST, RED], [#3] -> [$1] (t=13, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=3, inv_iters=0)
  GRANT_PREDICATE, [EAST, RED], [$0] -> [$0] (t=14, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$2] (t=14, inv_iters=1)
} (idx_per_ii=3)
{
  MEMSET, [$0], [EAST, RED], [$1] (t=15, inv_iters=1)
} (idx_per_ii=4)
{
  STORE, [NORTH, RED], [$2] (t=17, inv_iters=1)
} (idx_per_ii=6)
{
  ZEXT, [WEST, RED] -> [$0] (t=8, inv_iters=0)
  CTRL_MOV, [NORTH, RED] -> [$1] (t=19, inv_iters=1)
} (idx_per_ii=8)
{
  PHI, [NORTH, RED], [$0] -> [NORTH, RED] (t=9, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(2,0):
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [NORTH, RED], [$0] -> [WEST, RED] (t=14, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=10, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(3,0):
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=11, inv_iters=1)
} (idx_per_ii=0)

PE(0,1):
{
  GEP, [$0] -> [NORTH, RED] (t=11, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  ICMP_SGT, [SOUTH, RED], [#0] -> [EAST, RED] (t=1, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [$0] (t=12, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=2, inv_iters=0)
  LOAD, [$0] -> [EAST, RED] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [SOUTH, RED], [EAST, RED] -> [NORTH, RED], [SOUTH, RED] (t=3, inv_iters=0)
  DATA_MOV, [NORTH, RED] -> [EAST, RED] (t=14, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [EAST, RED], [NORTH, RED] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  ZEXT, [NORTH, RED] -> [EAST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(1,1):
{
  GEP, [$0] -> [EAST, RED], [SOUTH, RED], [WEST, RED] (t=11, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$1], [$0] -> [EAST, RED] (t=12, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=12, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [NORTH, RED] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_ONCE, [WEST, RED] -> [WEST, RED], [$2], [EAST, RED], [NORTH, RED], [SOUTH, RED] (t=2, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [$1] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [NORTH, RED], [$2] -> [EAST, RED] (t=14, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=14, inv_iters=1)
} (idx_per_ii=3)
{
  FMUL_FADD, [WEST, RED], [$0], [EAST, RED] -> [NORTH, RED] (t=15, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [$0] (t=15, inv_iters=1)
  CTRL_MOV, [NORTH, RED] -> [$1] (t=15, inv_iters=1)
} (idx_per_ii=4)
{
  FMUL_FADD, [$0], [NORTH, RED], [$1] -> [SOUTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=5)
{
  CTRL_MOV, [EAST, RED] -> [NORTH, RED] (t=17, inv_iters=1)
} (idx_per_ii=6)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=7, inv_iters=0)
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED] (t=18, inv_iters=1)
} (idx_per_ii=7)
{
  DATA_MOV, [NORTH, RED] -> [$0] (t=9, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  PHI, [NORTH, RED], [SOUTH, RED] -> [NORTH, RED], [$1] (t=10, inv_iters=0)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(2,1):
{
  GRANT_ONCE, [arg4] -> [$0] (t=11, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$1] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [$1] -> [SOUTH, RED] (t=12, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=12, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  ICMP_EQ, [NORTH, RED], [WEST, RED] -> [$0] (t=13, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=3, inv_iters=0)
  NOT, [$0] -> [$2], [NORTH, RED], [$1] (t=14, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=14, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=14, inv_iters=1)
} (idx_per_ii=3)
{
  MEMSET, [WEST, RED], [NORTH, RED], [$0] (t=15, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$0], [$2] -> [WEST, RED] (t=16, inv_iters=1)
} (idx_per_ii=5)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED] (t=17, inv_iters=1)
} (idx_per_ii=6)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(3,1):
{
  GRANT_ONCE, [#0] -> [NORTH, RED], [$0] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [WEST, RED] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  SHL, [NORTH, RED], [#3] -> [WEST, RED] (t=13, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=14, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  DATA_MOV, [WEST, RED] -> [NORTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(0,2):
{
  GEP, [EAST, RED], [$0] -> [SOUTH, RED], [NORTH, RED] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_ONCE, [arg3] -> [EAST, RED] (t=12, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  LOAD, [$0] -> [SOUTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  ICMP_SGT, [SOUTH, RED], [#0] -> [SOUTH, RED], [$0], [EAST, RED] (t=4, inv_iters=0)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [SOUTH, RED], [$0] -> [SOUTH, RED] (t=7, inv_iters=0)
} (idx_per_ii=7)
{
  DATA_MOV, [EAST, RED] -> [$0] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(1,2):
{
  NOT, [$0] -> [$0], [SOUTH, RED], [EAST, RED], [$5] (t=11, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  GRANT_PREDICATE, [$1], [$0] -> [$2] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  PHI, [$6], [$3] -> [$1], [$0] (t=13, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=13, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=3, inv_iters=0)
  GRANT_PREDICATE, [$0], [$4] -> [EAST, RED] (t=14, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=14, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$1], [$5] -> [$6] (t=15, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=15, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [NORTH, RED], [WEST, RED] -> [$0], [$1] (t=5, inv_iters=0)
  DATA_MOV, [SOUTH, RED] -> [NORTH, RED] (t=16, inv_iters=1)
  CTRL_MOV, [EAST, RED] -> [SOUTH, RED] (t=16, inv_iters=1)
} (idx_per_ii=5)
{
  PHI, [EAST, RED], [$0] -> [$3], [$0] (t=6, inv_iters=0)
} (idx_per_ii=6)
{
  PHI, [$2], [$0] -> [NORTH, RED], [WEST, RED], [EAST, RED], [$0] (t=7, inv_iters=0)
  CTRL_MOV, [SOUTH, RED] -> [$2] (t=18, inv_iters=1)
} (idx_per_ii=7)
{
  PHI, [SOUTH, RED], [$1] -> [SOUTH, RED], [WEST, RED], [EAST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  ADD, [$0], [#1] -> [$0], [$1] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  ICMP_EQ, [$0], [SOUTH, RED] -> [$0], [EAST, RED], [SOUTH, RED], [$4] (t=10, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(2,2):
{
  GRANT_PREDICATE, [$0], [WEST, RED] -> [$0] (t=11, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$1] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  ADD, [$0], [#1] -> [SOUTH, RED], [EAST, RED] (t=12, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [NORTH, RED] -> [SOUTH, RED] (t=13, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [NORTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_PREDICATE, [$0], [$1] -> [WEST, RED] (t=14, inv_iters=1)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=14, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$0] (t=14, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$2], [$0] -> [$0] (t=15, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [$1] (t=15, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$2] (t=15, inv_iters=1)
} (idx_per_ii=4)
{
  GRANT_PREDICATE, [$1], [$2] -> [WEST, RED] (t=16, inv_iters=1)
} (idx_per_ii=5)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)
{
  PHI, [$0], [WEST, RED] -> [WEST, RED], [$2], [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(3,2):
{
  GEP, [$0] -> [NORTH, RED] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  ZEXT, [$1] -> [SOUTH, RED] (t=12, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [$0] (t=12, inv_iters=1)
  DATA_MOV, [NORTH, RED] -> [WEST, RED] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  GRANT_PREDICATE, [$0], [$2] -> [WEST, RED] (t=13, inv_iters=1)
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  STORE, [SOUTH, RED] (t=14, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [SOUTH, RED] -> [$2] (t=5, inv_iters=0)
} (idx_per_ii=5)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=9, inv_iters=0)
} (idx_per_ii=9)
{
  DATA_MOV, [SOUTH, RED] -> [$1] (t=10, inv_iters=0)
} (idx_per_ii=10)

PE(0,3):
{
  LOAD, [SOUTH, RED] -> [EAST, RED] (t=12, inv_iters=1)
} (idx_per_ii=1)

PE(1,3):
{
  DATA_MOV, [WEST, RED] -> [SOUTH, RED] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  GRANT_ONCE, [#0] -> [$0] (t=3, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [SOUTH, RED] (t=14, inv_iters=1)
} (idx_per_ii=3)
{
  GRANT_PREDICATE, [$0], [SOUTH, RED] -> [SOUTH, RED] (t=4, inv_iters=0)
  DATA_MOV, [EAST, RED] -> [$0] (t=15, inv_iters=1)
} (idx_per_ii=4)
{
  STORE, [SOUTH, RED], [$0] (t=17, inv_iters=1)
} (idx_per_ii=6)
{
  DATA_MOV, [SOUTH, RED] -> [EAST, RED] (t=8, inv_iters=0)
} (idx_per_ii=8)

PE(2,3):
{
  LOAD, [EAST, RED] -> [SOUTH, RED] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [EAST, RED] -> [WEST, RED] (t=13, inv_iters=1)
} (idx_per_ii=2)
{
  RETURN (t=14, inv_iters=1)
  DATA_MOV, [SOUTH, RED] -> [WEST, RED] (t=14, inv_iters=1)
} (idx_per_ii=3)
{
  DATA_MOV, [WEST, RED] -> [EAST, RED] (t=9, inv_iters=0)
} (idx_per_ii=9)

PE(3,3):
{
  GEP, [$0] -> [WEST, RED], [SOUTH, RED] (t=11, inv_iters=1)
} (idx_per_ii=0)
{
  LOAD, [SOUTH, RED] -> [WEST, RED] (t=12, inv_iters=1)
} (idx_per_ii=1)
{
  DATA_MOV, [WEST, RED] -> [$0] (t=10, inv_iters=0)
} (idx_per_ii=10)

