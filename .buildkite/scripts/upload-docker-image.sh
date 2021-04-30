#!/usr/bin/env bash

aws ecr get-login-password \
    --region us-east-1 \
| docker login \
    --username AWS \
    --password-stdin 071035219568.dkr.ecr.us-east-1.amazonaws.com/emre-buildkite-test

docker build -t 071035219568.dkr.ecr.us-east-1.amazonaws.com/emre-buildkite-test .

docker push