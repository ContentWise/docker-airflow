#!/usr/bin/env bash

set -x

groupadd --gid ${DOCKER_GID:-999} docker -f
usermod -aG docker airflow

gosu airflow /start.sh $@