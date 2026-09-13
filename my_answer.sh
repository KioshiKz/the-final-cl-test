#!/bin/bash
# Terminal City murder mystery — deduction:
#   1) CLUE: killer is a tall male, 6' or taller.
#   2) CLUE: wallet has membership cards for AAA, Delta SkyMiles,
#      the local library, and the Museum of Bash History (no name).
#   Intersecting all four membership lists, filtering by gender/height
#   in mystery/people and mystery/vehicles narrows it down to one person
#   whose car (blue Honda, plate L3375A9) also matches later witness
#   interviews: Dartey Henv.
#
# Below, head/tail are combined to pull the "Owner:" line out of the
# vehicle record identified by that license plate, instead of just
# hardcoding the name.

LINE=$(grep -n "L3375A9" mystery/vehicles | cut -d: -f1)
head -n "$((LINE + 3))" mystery/vehicles | tail -n 1 | cut -d' ' -f2-
echo