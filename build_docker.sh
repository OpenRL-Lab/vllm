#!/bin/bash

TAG=yi_v2

docker login harbor.4pd.io -u test -p Harbor@test01
docker pull harbor.4pd.io/env/vllm/vllm-openai:latest
docker build -t harbor.4pd.io/env/vllm/vllm-openai:${TAG} -f vllm/Dockerfile_yi .

# push镜像
docker tag harbor.4pd.io/env/vllm/vllm-openai:${TAG} harbor.4pd.io/lab-platform/env/vllm/vllm-openai:${TAG}
docker push harbor.4pd.io/lab-platform/env/vllm/vllm-openai:${TAG}