#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/libvirt
export MODDIR

if [ "${FLAVOUR:-}" != "dx" ]; then
    echo "skipping tectonic-os/libvirt: not built for '${FLAVOUR:-the ungated build}'"
    exit 0
fi

dnf5 install -y edk2-ovmf libvirt libvirt-nss qemu qemu-img qemu-system-x86-core qemu-user-binfmt qemu-user-static-aarch64 virt-manager virt-v2v virt-viewer

source /ctx/modules/.remote/tectonic-os/libvirt/module.sh

cp -rT /ctx/modules/.remote/tectonic-os/libvirt/files /
