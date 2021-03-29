export GLUE_DIR=./glue_data
export OUTPUT_DIR="./saved_models/ROBERT/$1/$1_freezed_{$3}"

python ./run_glue.py \
  --model_type roberta \
  --model_name_or_path roberta-base \
  --task_name $1 \
  --do_train \
  --do_eval \
  --data_dir "$GLUE_DIR/$1" \
  --max_seq_length 128 \
  --per_gpu_train_batch_size $4 \
  --per_gpu_eval_batch_size $4 \
  --learning_rate $6 \
  --save_steps $2 \
  --logging_steps $2 \
  --num_train_epochs 5 \
  --output_dir $OUTPUT_DIR \
  --overwrite_output_dir \
  --gradient_accumulation_steps=$5 \
  --eval_all_checkpoints \
  --freezed_lower_layer $3 \
