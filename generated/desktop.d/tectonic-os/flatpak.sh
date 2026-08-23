#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/flatpak
export MODDIR

source /ctx/lib/family.sh

install_packages 'flatpak'

cp -rT /ctx/modules/.remote/tectonic-os/flatpak/files /
