import torch
print("PyTorch version:", torch.__version__)

device = "cuda" if torch.cuda.is_available() else "cpu"
print("Device:", device)
