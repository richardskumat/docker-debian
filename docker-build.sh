#!/bin/sh
# use this script to build the docker images with tags
# this is really dumb, must be a better way to build
# many tags/images from a script without manual
# definition

# plain d9
docker build -f Dockerfile-d9 \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9 \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-slim .

# d9 with contrib and nonfree
docker build -f Dockerfile-d9nf \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-nonfree \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-nonfree \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-slim-nonfree .

# d9 with molecule dependencies
docker build -f Dockerfile-d9-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-slim-molecule .

# d9 with molecule dependencies and contrib & nonfree repos
docker build -f Dockerfile-d9nf-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-slim-nonfree-molecule .

# plain d10
docker build -f Dockerfile-d10 \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10 \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-slim .

# d10 with contrib and nonfree
docker build -f Dockerfile-d10nf \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-nonfree \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-nonfree \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-slim-nonfree .

# d10 with molecule dependencies
docker build -f Dockerfile-d10-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-slim-molecule .

# d10 with molecule dependencies and contrib & nonfree repos
docker build -f Dockerfile-d10nf-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-slim-nonfree-molecule .

# git tag for git cloning in ci images
docker build -f Dockerfile-git \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:git .