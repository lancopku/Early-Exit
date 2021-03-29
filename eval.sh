export GLUE_DIR=../utils/glue_data/
export CUDA_VISIBLE_DEVICES=1
export MODEL_PATH="../saved_models/BERT/$1/$1_freezed_{$3}/"

python ./run_glue.py \
  --model_type bert \
  --model_name_or_path $MODEL_PATH \
  --task_name $1 \
  --do_eval \
  --do_lower_case \
  --overwrite_cache \
  --data_dir "$GLUE_DIR/$1" \
  --max_seq_length 128 \
  --per_gpu_train_batch_size=1 \
  --per_gpu_eval_batch_size=1 \
  --learning_rate 2e-5 \
  --save_steps 200 \
  --logging_steps 200 \
  --num_train_epochs 15 \
  --output_dir $MODEL_PATH \
  --patience $2 \
