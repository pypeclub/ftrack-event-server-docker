#!/usr/bin/env bash

export PYPE_DEBUG=3
export PYTHONDONTWRITEBYTECODE=1

pushd /opt/pype-setup

. pype eventserver
