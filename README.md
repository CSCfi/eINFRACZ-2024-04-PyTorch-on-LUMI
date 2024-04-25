# Live-demo scripts for the PyTorch on LUMI talk at e-INFRA CZ conference, 29.-30. April, 2024, Prague

This repository contains the PyTorch code as well as SLURM submission scripts used in the live demonstration in the conference.

Conference website: https://www.e-infra.cz/en

As an example, we finetune the [GPT-Neo LLM](https://huggingface.co/EleutherAI/gpt-neo-1.3B) on the [IMDb movie review dataset](https://huggingface.co/datasets/stanfordnlp/imdb) on
- a single GPU
- all GPUs on a node
- all GPUs across two nodes.


Note that the conda environment file is only intended as a summary of the required packages, but should not be used to install an environment on LUMI itself.