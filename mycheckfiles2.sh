#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"
head -1 rplpl-slurm*.out
head -1 rplspl-slurm*.out

echo "End Time"
tail -2 rplpl-slurm*.out
tail -2 rplspl-slurm*.out

