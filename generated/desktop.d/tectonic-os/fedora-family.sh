#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/tectonic-os/fedora-family
export MODDIR

source /ctx/modules/tectonic-os/fedora-family/module.sh

source /ctx/lib/selinux-helpers.sh
cp /ctx/modules/tectonic-os/fedora-family/selinux/composefs_execmem.te /tmp/composefs_execmem.te
install_selinux_module /tmp/composefs_execmem.te
