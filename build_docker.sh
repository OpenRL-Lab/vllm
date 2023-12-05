#!/bin/bash

docker pull harbor.4pd.io/env/vllm/vllm-openai:latest
docker build -t harbor.4pd.io/env/vllm/vllm-openai:yi_v2 -f vllm/Dockerfile_yi .