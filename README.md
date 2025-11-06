# HFModelDownload
**感谢大佬开源：https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f**

## using

1. Hugging Face 认证信息
```shell
export HF_ENDPOINT="https://hf-mirror.com"
export HF_USERNAME="your_hf_user_name"
export HF_TOKEN="your_hf_token"
```

2. 启动
```shell
bash m_hfd.sh
```

3.hfd.sh 使用
```shell
$ ./hfd.sh --help
Usage:
  hfd <REPO_ID> [--include include_pattern1 include_pattern2 ...] [--exclude exclude_pattern1 exclude_pattern2 ...] [--hf_username username] [--hf_token token] [--tool aria2c|wget] [-x threads] [-j jobs] [--dataset] [--local-dir path] [--revision rev]

Description:
  Downloads a model or dataset from Hugging Face using the provided repo ID.

Arguments:
  REPO_ID         The Hugging Face repo ID (Required)
                  Format: 'org_name/repo_name' or legacy format (e.g., gpt2)
Options:
  include/exclude_pattern The patterns to match against file path, supports wildcard characters.
                  e.g., '--exclude *.safetensor *.md', '--include vae/*'.
  --include       (Optional) Patterns to include files for downloading (supports multiple patterns).
  --exclude       (Optional) Patterns to exclude files from downloading (supports multiple patterns).
  --hf_username   (Optional) Hugging Face username for authentication (not email).
  --hf_token      (Optional) Hugging Face token for authentication.
  --tool          (Optional) Download tool to use: aria2c (default) or wget.
  -x              (Optional) Number of download threads for aria2c (default: 4).
  -j              (Optional) Number of concurrent downloads for aria2c (default: 5).
  --dataset       (Optional) Flag to indicate downloading a dataset.
  --local-dir     (Optional) Directory path to store the downloaded data.
                             Defaults to the current directory with a subdirectory named 'repo_name'
                             if REPO_ID is is composed of 'org_name/repo_name'.
  --revision      (Optional) Model/Dataset revision to download (default: main).

Example:
  hfd gpt2
  hfd bigscience/bloom-560m --exclude *.bin *.msgpack onnx/*
  hfd meta-llama/Llama-2-7b --hf_username myuser --hf_token mytoken -x 4
  hfd lavita/medical-qa-shared-task-v1-toy --dataset
  hfd bartowski/Phi-3.5-mini-instruct-exl2 --revision 5_0
```
