#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

# ---- /usr/share/just/justfile.apps ----
parts=()
for part in /usr/share/just/justfile.apps.d/0500-tectonic-os-auto-updates.part /usr/share/just/justfile.apps.d/0500-tectonic-os-hardened-malloc.part /usr/share/just/justfile.apps.d/0500-tectonic-os-system-just-scripts.part; do
    [ -f "$part" ] || continue
    parts+=("$part")
done
if [ ${#parts[@]} -gt 0 ]; then
    cat "${parts[@]}" > /usr/share/just/justfile.apps
fi
rm -rf /usr/share/just/justfile.apps.d

# ---- tectonic-os/fedora-family ----
MODDIR=/ctx/modules/tectonic-os/fedora-family
export MODDIR
source /ctx/modules/tectonic-os/fedora-family/finalize.sh

# ---- tectonic-os/signature-policy ----
MODDIR=/ctx/modules/tectonic-os/signature-policy
export MODDIR
source /ctx/modules/tectonic-os/signature-policy/finalize.sh

# ---- tectonic-os/auto-updates ----
MODDIR=/ctx/modules/tectonic-os/auto-updates
export MODDIR
source /ctx/modules/tectonic-os/auto-updates/finalize.sh
