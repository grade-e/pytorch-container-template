# Set the condition to enable GPU (default is 0, cpu only)
ARG GPU_ENABLED=0

# NVIDIA PyTorch Docker (support CUDA 11.1)
FROM python:3.10 AS base
FROM nvidia/cuda:11.8.0-runtime-ubuntu22.04 AS gpu

# Set the base image
FROM ${GPU_ENABLED:+gpu} AS final

# Install Python and dependencies
RUN apt-get update && apt-get install -y python3 python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install torch torchvision torchaudio jupyter matplotlib numpy pandas

# Set working directory
WORKDIR /workspace
COPY . /workspace

# Expose Jupyter Notebook port
EXPOSE 8888

# Command to run Jupyter Notebook
CMD ["sh", "-c", "python3 check_torch.py && jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root"]
