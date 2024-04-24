#!/bin/bash
imageName=php8-nginx
imageTag=1.22

DOCKER_BUILDKIT=1 docker build -t ${imageName}:${imageTag} -f Dockerfile  .