#PBS -S /bin/sh
#PBS -V
#PBS -N JOB_DESCRIPTION
#PBS -q QUEUE
#PBS -j oe
#PBS -M @hw.ac.uk
#PBS -m abe

# RESOURCE REQUEST
#PBS -l nodes=1:ppn=4:gpus=1:matlab
#PBS -l walltime=4:00:00

# a typical matlab job
cd $PBS_O_WORKDIR
matlab -nodisplay -r "ppn = getenv('PBS_NUM_PPN'); ppn = str2num(ppn); NTHREADS = feature('NumThreads', ppn), addpath(pwd), myMatlabScript, quit"
