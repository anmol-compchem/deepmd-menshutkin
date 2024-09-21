#!/bin/sh
### Anmol
#PBS -N dp_al
### Chemistry_job
#PBS -P mlpot.spons
### Request email when job begins and ends
#PBS -m bea
### Specify email address to use for notification.
#PBS -M cyz228613@iitd.ac.in
####
#PBS -q standard
#PBS -l select=1:ncpus=1
### Specify "wallclock time" required for this job, hhh:mm:ss
#PBS -l walltime=168:00:00
#PBS -o stdout_file
#PBS -e stderr_file
#### Get environment variables from submitting shell
# After job starts, must goto working directory.
# $PBS_O_WORKDIR is the directory from where the job is fired.

echo "==============================="
echo $PBS_JOBID
cat $PBS_NODEFILE
echo "==============================="echo "==============================="
cd $PBS_O_WORKDIR

export PATH="/home/chemistry/phd/cyz228613/Softwares/anaconda3/bin:$PATH"
conda activate
conda activate deepmd
dpgen run param.json machine_hpc.json
