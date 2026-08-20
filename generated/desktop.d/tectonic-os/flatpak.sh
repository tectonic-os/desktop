#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/flatpak
export MODDIR

dnf5 install -y flatpak

cp -rT /ctx/modules/.remote/tectonic-os/flatpak/files /
