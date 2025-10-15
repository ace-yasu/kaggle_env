# ベースイメージの指定が無い場合はCPU版のイメージを使用
ARG BASE_IMAGE=gcr.io/kaggle-images/python:latest
FROM ${BASE_IMAGE}

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    wget \
    unzip \
    python3-pip \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["jupyter","lab", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser", "--NotebookApp.token=''"]
