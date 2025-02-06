# pytorch-container-template

- This repository provides a template for running PyTorch within a Docker container, with support for both GPU and CPU environments.
- It includes instructions for building and running the Docker containers.
- It also includes instructions for checking the PyTorch installation using Jupyter notebook.

## GPU

### Build

```zsh
docker build --build-arg GPU_ENABLED=1 -t pytorch-gpu .
```

### Run

```zsh
docker run --gpus all -p 8888:8888 -v $(pwd):/workspace pytorch-gpu
```

## CPU

```zsh
docker build -t pytorch-cpu .
```

## Run (with GPU)

```zsh
docker run -p 8888:8888 -v $(pwd):/workspace pytorch-cpu
```