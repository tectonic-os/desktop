#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/tectonic-os/media-codecs
export MODDIR

if [ -f /etc/yum.repos.d/fedora-multimedia.repo ]; then
    echo "repo fedora-multimedia is already configured"
else
    source /ctx/modules/tectonic-os/media-codecs/repo
fi

source /ctx/modules/tectonic-os/media-codecs/module.sh
