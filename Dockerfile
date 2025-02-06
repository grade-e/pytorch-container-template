# NVIDIA PyTorch Docker 이미지 (CUDA 지원)
FROM nvidia/cuda:11.8.0-runtime-ubuntu22.04

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
