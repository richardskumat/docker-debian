#!/bin/sh

# d9 with molecule dependencies and contrib & nonfree repos
docker buildx build \
--push \
--platform linux/amd64,linux/arm/v7,linux/arm64 \
-f Dockerfile-d9nf-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-slim-nonfree-molecule .

docker run --rm $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-nonfree-molecule cat /etc/os-release

# d10 with molecule dependencies and contrib & nonfree repos
docker buildx build \
--push \
--platform linux/amd64,linux/arm/v7,linux/arm64 \
-f Dockerfile-d10nf-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-slim-nonfree-molecule .

docker run --rm $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-nonfree-molecule cat /etc/os-release

# d11 with molecule dependencies and contrib & nonfree repos
docker buildx build \
--push \
--platform linux/amd64,linux/arm/v7,linux/arm64 \
-f Dockerfile-d11nf-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:11-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:11-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:bullseye-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:bullseye-slim-nonfree-molecule .

docker run --rm $DOCKERHUB_USER/$DOCKERHUB_PROJECT:11-nonfree-molecule cat /etc/os-release

# d11 with molecule dependencies & dumb-init and contrib & nonfree repos
docker buildx build \
--push \
--platform linux/amd64,linux/arm/v7,linux/arm64 \
-f Dockerfile-d11nf-dumbinit \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:11-dumbinit \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:bullseye-dumbinit \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:bullseye-slim-dumbinit .

docker run --rm $DOCKERHUB_USER/$DOCKERHUB_PROJECT:11-dumbinit cat /etc/os-release

# git tag for git cloning in ci images
docker buildx build \
--push \
--platform linux/amd64,linux/arm/v7,linux/arm64 \
-f Dockerfile-git \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:git .

docker run --rm $DOCKERHUB_USER/$DOCKERHUB_PROJECT:git git --version

# push one last time
# https://docs.docker.com/engine/reference/commandline/push/
# docker:stable image was still on 19.03x as of 2021/08/08
# which didn't support the -a/-all-tags flag
docker push \
$DOCKERHUB_USER/$DOCKERHUB_PROJECT --all-tags