#!/bin/bash

TAG=orion_v2

sudo docker login harbor.4pd.io -u test -p Harbor@test01
sudo docker pull harbor.4pd.io/lab-platform/env/vllm/vllm-openai:latest
sudo docker build -t harbor.4pd.io/env/vllm/vllm-openai:${TAG} -f vllm/Dockerfile_orion .

# push镜像
sudo docker tag harbor.4pd.io/env/vllm/vllm-openai:${TAG} harbor.4pd.io/lab-platform/env/vllm/vllm-openai:${TAG}
sudo docker push harbor.4pd.io/lab-platform/env/vllm/vllm-openai:${TAG}