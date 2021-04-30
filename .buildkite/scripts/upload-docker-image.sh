#!/usr/bin/env bash

ECR_NAME="071035219568.dkr.ecr.us-east-1.amazonaws.com/emre-buildkite-test"

aws ecr get-login-password \
    --region us-east-1 \
| docker login \
    --username AWS \
    --password-stdin $ECR_NAME

docker build -t $ECR_NAME .

docker push $ECR_NAME