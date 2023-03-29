#!/bin/sh
#PBS -N PANO_TEST
#PBS -q v100@pbspl4
#PBS -l select=4:model=sky_gpu:ncpus=1:ngpus=1:ompthreads=1:mem=64GB
#PBS -l walltime=00:10:00
#PBS -o sky_1000_test.txt
#PBS -lplace=scatter:shared

module load cuda
module load gcc/9.3
module load mpi-hpe/mpt
module load comp-intel/2020.4.304
module load /u/scicon/tools/modulefiles/mpiprof

g++ -std=c++17 -I/nasa/hpe/mpt/2.25_rhel79/include -lpthread -L/nasa/hpe/mpt/2.25_rhel79/lib -lmpi /home5/rrramir2/Parallel_Programming_Examples/MPI_Image_Stitching_16.cpp -o pano_sky_object $(pkg-config --cflags --libs ~/local/opencv/lib64/pkgconfig/opencv.pc)

mpiexec -n 4 ./pano_sky_object --match_conf 0.3f --conf_thresh 0.3 --blend no --blend_strength 0 --try_cuda yes --expos_comp no --warp plane --wave_correct no  --features surf --match_conf 0.3

