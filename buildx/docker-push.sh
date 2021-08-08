#!/bin/sh

# d9 with molecule dependencies and contrib & nonfree repos
docker buildx build --push \
-f Dockerfile-d9nf-molecule \
--platform linux/amd64,linux/386,linux/arm/v7,linux/arm64 \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-slim-nonfree-molecule .

# d10 with molecule dependencies and contrib & nonfree repos
docker buildx build --push \
-f Dockerfile-d10nf-molecule \
--platform linux/amd64,linux/386,linux/arm/v7,linux/arm64 \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-slim-nonfree-molecule .

# git tag for git cloning in ci images
docker buildx build --push \
-f Dockerfile-git \
--platform linux/amd64,linux/386,linux/arm/v7,linux/arm64 \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:git .