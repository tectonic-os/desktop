#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/hardening/sudo-hardening
export MODDIR

cp -rT /ctx/modules/.remote/tectonic-os/hardening/sudo-hardening/files /
chmod '0440' -- '/etc/sudoers.d/99-hardening'
