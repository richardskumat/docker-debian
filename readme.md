# Debian docker images for Ansible testing

[![pipeline status](https://gitlab.com/richardskumat/docker-debian/badges/master/pipeline.svg)](https://gitlab.com/richardskumat/docker-debian/commits/master)

My own Debian images I use with molecule to test my
own ansible roles.

This image is based on the official [Debian images](https://hub.docker.com/_/debian)
on Dockerhub. These images use the slim versions as base images.

This repo will supersede debian-nonfree on [Gitlab](https://gitlab.com/richardskumat/debian-nonfree),
[Github](https://github.com/richardskumat/debian-nonfree) and [Dockerhub](https://hub.docker.com/r/qwe1/debian-nonfree).

## Tags

The tags that are built can be found in [docker-build.sh on gitlab.com](https://gitlab.com/richardskumat/docker-debian/blob/master/docker-build.sh).

As of 2020-01-25, these are the following:

```none
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9 \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-slim \
-t $CI_REGISTRY_IMAGE:9 \
-t $CI_REGISTRY_IMAGE:stretch \
-t $CI_REGISTRY_IMAGE:stretch-slim .
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-nonfree \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-nonfree \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-slim-nonfree \
-t $CI_REGISTRY_IMAGE:9-nonfree \
-t $CI_REGISTRY_IMAGE:stretch-nonfree \
-t $CI_REGISTRY_IMAGE:stretch-slim-nonfree .
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-slim-molecule \
-t $CI_REGISTRY_IMAGE:9-molecule \
-t $CI_REGISTRY_IMAGE:stretch-molecule \
-t $CI_REGISTRY_IMAGE:stretch-slim-molecule .
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:9-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:stretch-slim-nonfree-molecule \
-t $CI_REGISTRY_IMAGE:9-nonfree-molecule \
-t $CI_REGISTRY_IMAGE:stretch-nonfree-molecule \
-t $CI_REGISTRY_IMAGE:stretch-slim-nonfree-molecule .
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10 \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-slim \
-t $CI_REGISTRY_IMAGE:10 \
-t $CI_REGISTRY_IMAGE:buster \
-t $CI_REGISTRY_IMAGE:buster-slim .
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-nonfree \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-nonfree \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-slim-nonfree \
-t $CI_REGISTRY_IMAGE:10-nonfree \
-t $CI_REGISTRY_IMAGE:buster-nonfree \
-t $CI_REGISTRY_IMAGE:buster-slim-nonfree .
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-slim-molecule \
-t $CI_REGISTRY_IMAGE:10-molecule \
-t $CI_REGISTRY_IMAGE:buster-molecule \
-t $CI_REGISTRY_IMAGE:buster-slim-molecule .
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:10-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-nonfree-molecule \
-t $DOCKERHUB_USER/$DOCKERHUB_PROJECT:buster-slim-nonfree-molecule \
-t $CI_REGISTRY_IMAGE:10-nonfree-molecule \
-t $CI_REGISTRY_IMAGE:buster-nonfree-molecule \
-t $CI_REGISTRY_IMAGE:buster-slim-nonfree-molecule .
```

Notes on some tags:

**all tags**

All tags use the slim versions of the respective
debian release

**nonfree tags**

these images have contrib and nonfree repos enabled for testing.

**molecule tags**

these images have python installed so [molecule tests](https://github.com/ansible-community/molecule)
use these tags

**release version tags**

these tags just use the upstream slim images without any modifications

## Links to source code and build logs

Gitlab

https://gitlab.com/richardskumat/docker-debian

Gitlab pipelines

https://gitlab.com/richardskumat/docker-debian/pipelines

Github

https://github.com/richardskumat/docker-debian

Dockerhub

https://hub.docker.com/r/qwe1/docker-debian