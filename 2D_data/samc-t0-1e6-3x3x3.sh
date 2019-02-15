#!/bin/sh
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 1
#SBATCH --output samc-t0-1e6-3x3x3.out

set -ev

hostname
nice -19 ../target/release/energy-number-mc --samc-t0 1e7 --save-as samc-t0-1e6-3x3x3.yaml --addremove-probability 0.2  --cell-volume 103.759 --movie-time "10^(1/4)" --well-width 1.3 --movie-name samc-t0-1e6-3x3x3.yaml --save-time 0.5 --translation-scale 0.05
