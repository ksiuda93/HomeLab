#!/bin/bash

export GITHUB_TOKEN=
export GITHUB_USER=ksiuda93

flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=fleet-infra \
  --branch=main \
  --path=./k3s/clusters/rpi-dev-0 \
  --personal