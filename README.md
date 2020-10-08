# docker-ansible-centos

[![Build Status](https://travis-ci.com/agoloncser/docker-ansible-centos.svg?branch=master)](https://travis-ci.com/agoloncser/docker-ansible-centos)

Centos-based docker images for testing Ansible code.

Includes systemd and python3 and sudo.

## Running this image

    docker run --privileged -ti -v /sys/fs/cgroup:/sys/fs/cgroup:ro $(basename $(pwd) | sed 's/\.git//'):$(cat VERSION) /bin/bash

## Building this image manually

    docker build --tag $(basename $(pwd) | sed 's/\.git//'):$(cat VERSION) .
