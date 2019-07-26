#!/usr/bin/env bash

VERSION=${1:-5.13.2}
IMAGE_BASE_NAME=${2:-eugenmayer/mattermost}

git clone https://github.com/mattermost/mattermost-docker

pushd mattermost-docker
git pull

pushd app
docker build --build-arg edition=team --build-arg MM_VERSION=${VERSION} -t ${IMAGE_BASE_NAME}-app:team-${VERSION} .

popd
pushd db
docker build -t ${IMAGE_BASE_NAME}-db:team-${VERSION} .

popd