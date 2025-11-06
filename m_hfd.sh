#!/bin/bash

# Hugging Face 认证信息
# export HF_ENDPOINT="https://hf-mirror.com"
# export HF_USERNAME="your_hf_user_name"
# export HF_TOKEN="your_hf_token"

echo "using end point: $HF_ENDPOINT"

# 模型列表
models=(
  "meta-llama/Meta-Llama-3-70B-Instruct",
  "meta-llama/Llama-3.1-8B-Instruct"
)

# 循环下载
for model in "${models[@]}"; do
  echo "▶️ 正在下载模型: $model"
  bash ./hfd.sh  $model  --hf_username $HF_USERNAME --hf_token $HF_TOKEN
  echo "✅ 完成: $model"
  echo "---------------------------------------"
done

echo "🎉 所有模型下载完成。"
