#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/tectonic-os/just
export MODDIR

dnf5 install -y just

cp -rT /ctx/modules/tectonic-os/just/files /
