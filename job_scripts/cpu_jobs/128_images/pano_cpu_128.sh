#!/bin/sh
#PBS -N PANO_TEST_cpu
#PBS -l select=2:ncpus=32:mpiprocs=32:model=sky_ele
#PBS -l walltime=01:00:00
#PBS -o cpu_test_128.txt
#PBS -l place=scatter:shared

module load cuda
module load gcc/9.3
module load mpi-hpe/mpt
module load comp-intel/2020.4.304
module load /u/scicon/tools/modulefiles/mpiprof

g++ -std=c++17 -I/nasa/hpe/mpt/2.25_rhel79/include -lpthread -L/nasa/hpe/mpt/2.25_rhel79/lib -lmpi /home5/rrramir2/Parallel_Programming_Examples/MPI_Image_Stitching_128.cpp -o cpu_object_128 $(pkg-config --cflags --libs ~/local/opencv/lib64/pkgconfig/opencv.pc)

mpiexec -n 64 ./cpu_object_128 --match_conf 0.3f --conf_thresh 0.3 --blend no --blend_strength 0 --try_cuda no --expos_comp no --warp plane --wave_correct no  --features surf --match_conf 0.3

