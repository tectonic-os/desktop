#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/kde-desktop
export MODDIR

source /ctx/lib/family.sh

install_packages 'plasma-browser-integration' 'plymouth' 'plymouth-theme-spinner' 'gvfs' 'gvfs-client' 'gvfs-fuse' 'input-remapper' 'kamera' 'kate' 'kate-krunner-plugin' 'kate-plugins' 'ksystemlog' 'plasma-firewall' 'plasma-firewall-firewalld'

install_groups 'kde-desktop' 'networkmanager-submodules'

source /ctx/modules/.remote/tectonic-os/kde-desktop/module.sh

cp -rT /ctx/modules/.remote/tectonic-os/kde-desktop/files /
