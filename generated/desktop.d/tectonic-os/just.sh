#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/just
export MODDIR

source /ctx/lib/family.sh

install_packages 'just'

cp -rT /ctx/modules/.remote/tectonic-os/just/files /
