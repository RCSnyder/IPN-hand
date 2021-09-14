#!/bin/bash

echo hello
python3 -c 'import sys; print(".".join(map(str, sys.version_info[:3])))'


python3 offline_test.py \
	--root_path D:/__School/__Masters/____2021fALL/5280_aiwearables/IPN_Hand \
	--video_path dataset/HandGestures/IPN_dataset \
	--annotation_path scripts/Real-time-GesRec/annotation_ipnGesture/ipnall_but_None.json \
	--result_path scripts/Real-time-GesRec/results_ipn \
	--resume_path scripts/Real-time-GesRec/report_ipn/ipnClfRf_jes32rb32_resnext-101.pth \
    --store_name ipnClfRf_jes32r_b32 \
	--modality RGB-flo \
	--dataset ipn \
	--sample_duration 32 \
    --model resnext \
	--model_depth 101 \
	--resnet_shortcut B \
	--batch_size 1 \
	--n_classes 13 \
	--n_finetune_classes 13 \
	--n_val_samples 1 \
	--test_subset test \
    --n_epochs 100 \
    --no_train \
    --no_val \
    --test \