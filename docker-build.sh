#!/bin/sh

# d9 with molecule dependencies and contrib & nonfree repos
docker build \
-f Dockerfile-d9nf-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-slim-nonfree-molecule .

# d10 with molecule dependencies and contrib & nonfree repos
docker build \
-f Dockerfile-d10nf-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-slim-nonfree-molecule .

# d11 with molecule dependencies and contrib & nonfree repos
docker build \
-f Dockerfile-d11nf-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:11-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:bullseye-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:bullseye-slim-nonfree-molecule .

# git tag for git cloning in ci images
docker build \
-f Dockerfile-git \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:git .