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

Notes on some tags:

**all tags**

All tags use the slim versions of the respective
Debian release.

All recently updated tags have contrib and non-free repos
enabled.

**molecule tags**

these images have python installed so [molecule tests](https://github.com/ansible-community/molecule)
can use these tags.

## Links to source code and build logs

Gitlab

https://gitlab.com/richardskumat/docker-debian

Gitlab pipelines

https://gitlab.com/richardskumat/docker-debian/pipelines

Github

https://github.com/richardskumat/docker-debian

Dockerhub

https://hub.docker.com/r/qwe1/docker-debian