#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/cli-tools
export MODDIR

source /ctx/lib/family.sh

install_packages '7zip-standalone' 'bash-completion' 'bc' 'bsdunzip' 'btop' 'htop' 'iw' 'mtr' 'pv' 'rsync' 'tmux' 'tree' 'vim-enhanced' 'whois' 'wl-clipboard' 'zip'
