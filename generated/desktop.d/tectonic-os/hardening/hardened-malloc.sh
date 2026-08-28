#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/hardening/hardened-malloc
export MODDIR

source /ctx/lib/family.sh

export COPR_SECUREBLUE_PACKAGES='copr:copr.fedorainfracloud.org:secureblue:packages'
enable_copr 'secureblue/packages'

TECT_ENABLE_REPO='copr:copr.fedorainfracloud.org:secureblue:packages' install_packages 'hardened_malloc' 'no_rlimit_as'

cp -rT /ctx/modules/.remote/tectonic-os/hardening/hardened-malloc/files /

mkdir -p /usr/share/just/justfile.apps.d
cat /ctx/modules/.remote/tectonic-os/hardening/hardened-malloc/justfile.inc > /usr/share/just/justfile.apps.d/0500-tectonic-os-hardening-hardened-malloc.part
