#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/bazaar
export MODDIR

mkdir -p /usr/share/flatpak-defaults/apps.list.d
cat /ctx/modules/.remote/tectonic-os/bazaar/flatpaks.list > /usr/share/flatpak-defaults/apps.list.d/0500-tectonic-os-bazaar.part
