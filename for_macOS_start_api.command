#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
echo "=============$CURRENT_DIR============="
cd "$CURRENT_DIR"

# activate env
source ~/.zshrc
conda activate cosyvoice
# print current env, make sure the CosyVoice env has been activated.
conda info --envs

python3.10 api.py