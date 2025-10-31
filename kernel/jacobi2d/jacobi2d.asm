# Jacobi-2D (5-point) — steady phase (no prologue here)
# Assumptions:
#   - $7 holds each PE's center_old (loaded by a separate prologue that injects 4 rows from the top).
#   - Port buffers retain a written value until consumed by a matching read.
# Scheduling:
#   - t0: acc base ($5 = 0.0)
#   - t1: load a single coefficient ($1 = 0.25) and broadcast $7 to ALL existing neighbor directions once
#   - t2: FMA with WEST  (left edge uses $7)
#   - t3: FMA with EAST  (right edge uses $7)
#   - t4: FMA with NORTH (top edge uses $7)
#   - t5: FMA with SOUTH -> emit to [EAST, BLUE] (bottom edge uses $7)
# Notes:
#   - No further DATA_MOV after t1 to avoid overwriting buffered old values.
#   - This preserves true Jacobi semantics (all neighbors are old values).

PE(0,0):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [EAST, RED]
  DATA_MOV, [$7] -> [NORTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [$7], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [$7], [$6] -> [EAST, BLUE]
} (t=5)

PE(1,0):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [WEST, RED]
  DATA_MOV, [$7] -> [EAST, RED]
  DATA_MOV, [$7] -> [NORTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [WEST, RED], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [$7], [$6] -> [EAST, BLUE]
} (t=5)

PE(2,0):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [WEST, RED]
  DATA_MOV, [$7] -> [EAST, RED]
  DATA_MOV, [$7] -> [NORTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [WEST, RED], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [$7], [$6] -> [EAST, BLUE]
} (t=5)

PE(3,0):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [WEST, RED]
  DATA_MOV, [$7] -> [NORTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [WEST, RED], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [$7], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [$7], [$6] -> [EAST, BLUE]
} (t=5)

PE(0,1):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [EAST, RED]
  DATA_MOV, [$7] -> [NORTH, RED]
  DATA_MOV, [$7] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [$7], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(1,1):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [WEST, RED]
  DATA_MOV, [$7] -> [EAST, RED]
  DATA_MOV, [$7] -> [NORTH, RED]
  DATA_MOV, [$7] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [WEST, RED], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(2,1):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [WEST, RED]
  DATA_MOV, [$7] -> [EAST, RED]
  DATA_MOV, [$7] -> [NORTH, RED]
  DATA_MOV, [$7] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [WEST, RED], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(3,1):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [WEST, RED]
  DATA_MOV, [$7] -> [NORTH, RED]
  DATA_MOV, [$7] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [WEST, RED], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [$7], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(0,2):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [EAST, RED]
  DATA_MOV, [$7] -> [NORTH, RED]
  DATA_MOV, [$7] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [$7], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(1,2):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [WEST, RED]
  DATA_MOV, [$7] -> [EAST, RED]
  DATA_MOV, [$7] -> [NORTH, RED]
  DATA_MOV, [$7] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [WEST, RED], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(2,2):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [WEST, RED]
  DATA_MOV, [$7] -> [EAST, RED]
  DATA_MOV, [$7] -> [NORTH, RED]
  DATA_MOV, [$7] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [WEST, RED], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(3,2):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [WEST, RED]
  DATA_MOV, [$7] -> [NORTH, RED]
  DATA_MOV, [$7] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [WEST, RED], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [$7], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [NORTH, RED], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(0,3):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [EAST, RED]
  DATA_MOV, [$7] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [$7], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [$7], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(1,3):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [WEST, RED]
  DATA_MOV, [$7] -> [EAST, RED]
  DATA_MOV, [$7] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [WEST, RED], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [$7], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(2,3):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [WEST, RED]
  DATA_MOV, [$7] -> [EAST, RED]
  DATA_MOV, [$7] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [WEST, RED], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [EAST, RED], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [$7], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

PE(3,3):
{
  CONSTANT, [#0.0] -> [$5]
} (t=0)
{
  CONSTANT, [#0.25] -> [$1]
  DATA_MOV, [$7] -> [WEST, RED]
  DATA_MOV, [$7] -> [SOUTH, RED]
} (t=1)
{
  FMUL_FADD, [$1], [WEST, RED], [$5] -> [$6]
} (t=2)
{
  FMUL_FADD, [$1], [$7], [$6] -> [$6]
} (t=3)
{
  FMUL_FADD, [$1], [$7], [$6] -> [$6]
} (t=4)
{
  FMUL_FADD, [$1], [SOUTH, RED], [$6] -> [EAST, BLUE]
} (t=5)

