# pytorch-container

Run pytorch with gpu with Jupyter notebook

## Build

```zsh
docker build -t pytorch-container .
```

## Run (with GPU)

```zsh
docker run --gpus all -p 8888:8888 -v $(pwd):/workspace pytorch-container
```