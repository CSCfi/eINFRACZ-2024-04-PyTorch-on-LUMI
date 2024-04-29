#!/bin/bash
#SBATCH --account=project_XXXXXXX
#SBATCH --partition=small-g
#SBATCH --gpus-per-node=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=7
#SBATCH --mem-per-gpu=60G
#SBATCH --time=1:00:00

module purge
module use /appl/local/csc/modulefiles/
module load pytorch

SCRATCH="/scratch/${SLURM_JOB_ACCOUNT}"

export MODEL_DIR=$SCRATCH/$USER/eINFRACZ/models
export TORCH_HOME=$SCRATCH/torch-cache
export HF_HOME=$SCRATCH/hf-cache
mkdir -p $TORCH_HOME $HF_HOME
export TOKENIZERS_PARALLELISM=false

set -xv
srun python pytorch_imdb_gpt.py --datadir $MODEL_DIR --model-name gpt-imdb-model-${SLURM_JOBID} --num_workers ${SLURM_CPUS_PER_TASK}
