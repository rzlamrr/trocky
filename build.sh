#!/bin/bash

pip install poetry
poetry install
poetry run gen_dockerfile | DOCKER_BUILDKIT=1 docker build -t rzlamrr/tdesktop:centos_env -
