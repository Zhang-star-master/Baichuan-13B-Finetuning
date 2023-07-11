CUDA_VISIBLE_DEVICES=0 python finetune_lora.py \
    --do_train \
    --model_name_or_path baichuan-inc/Baichuan-13B-Chat \
    --dataset_dir data \
    --dataset alpaca_gpt4_zh \
    --output_dir baichuan_lora_checkpoint \
    --source_prefix ""  \
    --max_source_length 256 \
    --max_target_length 512 \
    --per_device_train_batch_size 1 \
    --gradient_accumulation_steps 1 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 1000 \
    --learning_rate 5e-5 \
    --num_train_epochs 1.0 \
    --plot_loss \
    --fp16  \
    --lora_target W_pack \
    --lora_rank 8 