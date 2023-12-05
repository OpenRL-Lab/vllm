#!/bin/bash

TAG=harbor.4pd.io/env/vllm/vllm-openai
VERSION=yi
sudo docker tag ${TAG}:${VERSION} ${TAG}:${VERSION}
sudo docker push ${TAG}:${VERSION}