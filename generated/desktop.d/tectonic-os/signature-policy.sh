#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/signature-policy
export MODDIR

install -D -m 0644 -- '/ctx/keys/etc/pki/containers/cosign.pub' '/etc/pki/containers/cosign.pub'
