#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/tectonic-os/auto-updates
export MODDIR

cp -rT /ctx/modules/tectonic-os/auto-updates/files /

mkdir -p /usr/share/just/justfile.apps.d
cat /ctx/modules/tectonic-os/auto-updates/justfile.inc > /usr/share/just/justfile.apps.d/0500-tectonic-os-auto-updates.part
