#!/usr/bin/env bash

VERSION=${1:-5.13.2}
IMAGE_BASE_NAME=${2:-eugenmayer/mattermost}

docker push ${IMAGE_BASE_NAME}-app:team-${VERSION}

git tag ${VERSION}
git push --tags
