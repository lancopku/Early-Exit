export CUDA_VISIBLE_DEVICES=0

bash finetune_bert.sh MRPC 50 2 16 1 2e-5 5;
bash finetune_bert.sh SST-2 200 2 16 1 1e-5 3;
bash finetune_bert.sh QNLI 500 1 16 1 1e-5 3;
bash finetune_bert.sh MNLI 2000 3 32 4 3e-5 5;
bash finetune_bert.sh QQP 2000 2 32 4 5e-5 3;
bash finetune_bert.sh RTE 50 1 16 1 2e-5 5;
