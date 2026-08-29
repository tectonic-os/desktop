#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/plymouth
export MODDIR

source /ctx/lib/family.sh

install_packages 'plymouth' 'plymouth-theme-spinner'

source /ctx/modules/.remote/tectonic-os/plymouth/module.sh
