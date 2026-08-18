#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/tectonic-os/dev-tools
export MODDIR

if [ "${FLAVOUR:-}" != "dx" ]; then
    echo "skipping tectonic-os/dev-tools: not built for '${FLAVOUR:-the ungated build}'"
    exit 0
fi

dnf5 install -y direnv git git-credential-libsecret git-delta git-lfs
