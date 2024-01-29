#!/bin/bash

TAG=latest

sudo docker login harbor.4pd.io -u test -p Harbor@test01

DOCKER_BUILDKIT=1 sudo docker build --target vllm-openai -t harbor.4pd.io/lab-platform/env/vllm/vllm-openai:latest --build-arg max_jobs=32 --build-arg nvcc_threads=2 -f ./Dockerfile_latest .


# push镜像
sudo docker tag harbor.4pd.io/lab-platform/env/vllm/vllm-openai:${TAG} harbor.4pd.io/lab-platform/env/vllm/vllm-openai:${TAG}
sudo docker push harbor.4pd.io/lab-platform/env/vllm/vllm-openai:${TAG}