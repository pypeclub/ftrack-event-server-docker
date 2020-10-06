#!/usr/bin/env bash

export PYPE_DEBUG=3
export PYTHONDONTWRITEBYTECODE=1

pushd /mnt/pipeline/pype-production/pype-setup

. pype eventserver
