#!/bin/sh
#PBS -N PANO_TEST
#PBS -q v100@pbspl4
#PBS -l select=10:model=sky_gpu:ncpus=36:ngpus=1
#PBS -l walltime=00:10:00
#PBS -o test.txt
#PBS -lplace=scatter:exclhost

module load cuda
module load gcc/9.3
module load mpi-hpe/mpt
module load comp-intel/2020.4.304
module load /u/scicon/tools/modulefiles/mpiprof

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

echo "hello"
sleep 1s # Waits 5 seconds.

