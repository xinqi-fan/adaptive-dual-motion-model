#!/bin/bash
#SBATCH --partition=gpu_7d1g
#SBATCH --nodes=1                # 1 computer nodes
#SBATCH --cpus-per-task=6        # 4 OpenMP threads on EACH MPI TASK
#SBATCH --gres=gpu:1             # Using 1 GPU card
#SBATCH --mem=32GB               # Request xGB memory
#SBATCH --output=/home/xinqifan2/Project/adaptive-dual-motion-model/hpc/train_%j.log   # Standard output

module load gcc openmpi/4.0.5/gcc/8.3.0
module load cuda/11.0.2 cuda/blas/11.0.2 cuda/fft/11.0.2

source activate pytorch160

nvidia-smi

cd /home/xinqifan2/Project/adaptive-dual-motion-model

# casme2
echo "casme2"
python run.py --config config/casme2-256.yaml --checkpoint checkpoints_casme2/vox-cpk.pth.tar

# smic
echo "smic"
python run.py --config config/smic-256.yaml --checkpoint checkpoints_smic/vox-cpk.pth.tar

# samm
echo "samm"
python run.py --config config/samm-256.yaml --checkpoint checkpoints_samm/vox-cpk.pth.tar


