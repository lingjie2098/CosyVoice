#!/bin/bash

# Preparatory work
# Install git
# Install Conda: please see https://docs.conda.io/en/latest/miniconda.html

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
echo "=============$CURRENT_DIR============="
cd "$CURRENT_DIR"
git submodule update --init --recursive

conda create -n cosyvoice python=3.10

# activate env
source ~/.zshrc
conda activate cosyvoice
# print current env, make sure the CosyVoice env has been activated.
conda info --envs
conda install -y -c conda-forge pynini==2.1.5

pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/ --trusted-host=mirrors.aliyun.com

# api.py need.
pip install -r api_requirements.txt -i https://mirrors.aliyun.com/pypi/simple/ --trusted-host=mirrors.aliyun.com