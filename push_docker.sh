#!/bin/bash

TAG=harbor.4pd.io/env/vllm/vllm-openai
VERSION=latest
sudo docker tag ${TAG}:${VERSION} ${TAG}:${VERSION}
sudo docker push ${TAG}:${VERSION}