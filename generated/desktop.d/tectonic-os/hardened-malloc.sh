#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/hardened-malloc
export MODDIR

source /ctx/modules/.remote/tectonic-os/hardened-malloc/module.sh

cp -rT /ctx/modules/.remote/tectonic-os/hardened-malloc/files /

mkdir -p /usr/share/just/justfile.apps.d
cat /ctx/modules/.remote/tectonic-os/hardened-malloc/justfile.inc > /usr/share/just/justfile.apps.d/0500-tectonic-os-hardened-malloc.part
