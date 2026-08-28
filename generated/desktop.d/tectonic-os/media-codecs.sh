#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/media-codecs
export MODDIR

if [ -f /etc/yum.repos.d/fedora-multimedia.repo ]; then
    echo "repo fedora-multimedia is already configured"
else
    source /ctx/modules/.remote/tectonic-os/media-codecs/repo
fi

source /ctx/lib/family.sh

install_packages 'ffmpeg' 'ffmpeg-libs' 'libva-utils' 'pipewire-config-raop' 'pipewire-gstreamer' 'pipewire-libs-extra' 'pipewire-utils'

source /ctx/modules/.remote/tectonic-os/media-codecs/module.sh
