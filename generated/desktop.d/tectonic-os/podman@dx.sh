#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/podman
export MODDIR

if [ "${FLAVOUR:-}" != "dx" ]; then
    echo "skipping tectonic-os/podman: not built for '${FLAVOUR:-the ungated build}'"
    exit 0
fi

dnf5 install -y podman-compose podman-machine podman-tui slirp4netns

cp -rT /ctx/modules/.remote/tectonic-os/podman/files /
