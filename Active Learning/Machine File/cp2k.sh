#!/bin/bash -l 
#PBS -l select={number_node}:ncpus={cpu_per_node}
#PBS -j oe
#PBS -l walltime=12:00:00
#PBS -o stdout_file_cp2k
#PBS -e stderr_file_cp2k


