#!/bin/sh

# d9 with molecule dependencies and contrib & nonfree repos
docker buildx build --load \
--platform linux/amd64 \
-f Dockerfile-d9nf-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-slim-nonfree-molecule .

docker run --rm $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-nonfree-molecule cat /etc/os-release

# d10 with molecule dependencies and contrib & nonfree repos
docker buildx build --load \
--platform linux/amd64 \
-f Dockerfile-d10nf-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-slim-nonfree-molecule .

docker run --rm $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-nonfree-molecule cat /etc/os-release

# d11 with molecule dependencies and contrib & nonfree repos
docker buildx build --load \
--platform linux/amd64 \
-f Dockerfile-d11nf-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:11-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:bullseye-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:bullseye-slim-nonfree-molecule .

docker run --rm $DOCKERHUB_USER/$DOCKERHUB_PROJECT:11-nonfree-molecule cat /etc/os-release

# d11 with molecule dependencies & dumb-init and contrib & nonfree repos
docker buildx build --load \
--platform linux/amd64 \
-f Dockerfile-d11nf-dumbinit \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:11-dumbinit \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:bullseye-dumbinit \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:bullseye-slim-dumbinit .

docker run --rm $DOCKERHUB_USER/$DOCKERHUB_PROJECT:11-dumbinit cat /etc/os-release

# d12 with molecule dependencies and contrib & nonfree repos
docker buildx build --load \
--platform linux/amd64 \
-f Dockerfile-d12nf-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:12-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:bookworm-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:bookworm-slim-nonfree-molecule .

docker run --rm $DOCKERHUB_USER/$DOCKERHUB_PROJECT:12-nonfree-molecule cat /etc/os-release

# git tag for git cloning in ci images
docker buildx build --load \
--platform linux/amd64 \
-f Dockerfile-git \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:git .

docker run --rm $DOCKERHUB_USER/$DOCKERHUB_PROJECT:git git --version

docker images