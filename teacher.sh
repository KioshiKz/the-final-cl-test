#!/bin/bash

INTERVIEW=$(grep -Rl "L337" mystery/interviews | sed 's/.*interview-//')

echo "$INTERVIEW"
cat "mystery/interviews/interview-$INTERVIEW"
echo "$MAIN_SUSPECT"