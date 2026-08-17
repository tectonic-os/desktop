#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/tectonic-os/goojust
export MODDIR

export ASSET_GOOJUST_VERSION="0.1.5"
export ASSET_GOOJUST_URL="https://github.com/tectonic-os/goojust/releases/download/v0.1.5/goojust-v0.1.5-x86_64-linux-gnu.tar.gz"
export ASSET_GOOJUST_SHA256="b5555c822de33e74793d43d99df27adaebc9f4be08dc956e8d7cbfb2a5121375"

dnf5 install -y fastfetch

source /ctx/modules/tectonic-os/goojust/module.sh

cp -rT /ctx/modules/tectonic-os/goojust/files /
