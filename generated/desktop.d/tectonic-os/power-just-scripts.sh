#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/tectonic-os/power-just-scripts
export MODDIR

mkdir -p /usr/share/just/justfile.apps.d
cat /ctx/modules/tectonic-os/power-just-scripts/justfile.inc > /usr/share/just/justfile.apps.d/0900-tectonic-os-power-just-scripts.part
