#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/tectonic-os/vscodium
export MODDIR

if [ "${FLAVOUR:-}" != "dx" ]; then
    echo "skipping tectonic-os/vscodium: not built for '${FLAVOUR:-the ungated build}'"
    exit 0
fi

if [ -f /etc/yum.repos.d/vscodium.repo ]; then
    echo "repo vscodium is already configured"
else
    source /ctx/modules/tectonic-os/vscodium/repo
fi

source /ctx/modules/tectonic-os/vscodium/module.sh
