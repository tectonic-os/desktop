#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/system-just-scripts
export MODDIR

mkdir -p /usr/share/just/justfile.apps.d
cat /ctx/modules/.remote/tectonic-os/system-just-scripts/justfile.inc > /usr/share/just/justfile.apps.d/0500-tectonic-os-system-just-scripts.part
