#!/bin/bash -l 
#PBS -l select={number_node}:ncpus={cpu_per_node}:ngpus={gpu_per_node}
#PBS -j oe
#PBS -l walltime=48:00:00
#PBS -o stdout_file_dp
#PBS -e stderr_file_dp


