#!/bin/bash

###SBATCH --partition=gpu-a100

#SBATCH --partition=deeplearn
#SBATCH --qos=gpgpudeeplearn
###SBATCH --constraint=dlg1

#SBATCH --job-name="deb_train"
#SBATCH --account=punim1623
#SBATCH --time=0-01:00:00

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --gres=gpu:2
### "ntasks-per-node" should have same value as "res=gpu:"

#SBATCH --cpus-per-task=1
#SBATCH --mem=40G

### SBATCH --mail-user=haitianh@student.unimelb.edu.au
### SBATCH --mail-type=BEGIN

### export WORLD_SIZE=4   #### update world size: nodes x ntasks-per-node
### export MASTER_PORT=12340

### echo ">>> NODELIST="${SLURM_NODELIST}
### master_addr=$(scontrol show hostnames "$SLURM_JOB_NODELIST" | head -n 1)
### export MASTER_ADDR=$master_addr
### echo ">>> MASTER_ADDR="$MASTER_ADDR

module purge

eval "$(conda shell.bash hook)"
conda activate old_torch

CUDA_VISIBLE_DEVICES=0,1,2,3 python3 tools/train_net_step.py --save_dir fsod_save_dir --dataset fsod --cfg configs/fsod/voc_e2e_faster_rcnn_R-50-C4_1x_old_1.yaml --bs 2 --iter_size 2 --nw 4 --load_detectron data/pretrained_model/model_final.pkl

##Log this job's resource usage stats###
my-job-stats -a -n -s
##