# pytorch-gpu-container-template

Run pytorch with gpu with Jupyter notebook

## Build

```zsh
docker build -t pytorch-gpu-container .
```

## Run (with GPU)

```zsh
docker run --gpus all -p 8888:8888 -v $(pwd):/workspace pytorch-gpu-container
```