#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

# ---- /usr/share/flatpak-defaults/apps.list ----
parts=()
for part in /usr/share/flatpak-defaults/apps.list.d/0500-tectonic-os-bazaar.part; do
    [ -f "$part" ] || continue
    parts+=("$part")
done
if [ ${#parts[@]} -gt 0 ]; then
    cat "${parts[@]}" > /usr/share/flatpak-defaults/apps.list
fi
rm -rf /usr/share/flatpak-defaults/apps.list.d

# ---- /usr/share/just/justfile.apps ----
parts=()
for part in /usr/share/just/justfile.apps.d/0500-tectonic-os-auto-updates.part /usr/share/just/justfile.apps.d/0500-tectonic-os-hardening-hardened-malloc.part /usr/share/just/justfile.apps.d/0500-tectonic-os-system-just-scripts.part; do
    [ -f "$part" ] || continue
    parts+=("$part")
done
if [ ${#parts[@]} -gt 0 ]; then
    cat "${parts[@]}" > /usr/share/just/justfile.apps
fi
rm -rf /usr/share/just/justfile.apps.d

# ---- tectonic-os/fedora-family ----
MODDIR=/ctx/modules/.remote/tectonic-os/fedora-family
export MODDIR
source /ctx/modules/.remote/tectonic-os/fedora-family/finalize.sh

# ---- tectonic-os/signature-policy ----
MODDIR=/ctx/modules/.remote/tectonic-os/signature-policy
export MODDIR
source /ctx/modules/.remote/tectonic-os/signature-policy/finalize.sh

# ---- tectonic-os/auto-updates ----
MODDIR=/ctx/modules/.remote/tectonic-os/auto-updates
export MODDIR
source /ctx/modules/.remote/tectonic-os/auto-updates/finalize.sh

# ---- /opt relocation ----
mkdir -p /usr/lib/opt
tmpfiles=/usr/lib/tmpfiles.d/zz-opt-symlinks.conf
printf 'd /var/opt 0755 root root -\n' > "$tmpfiles"
for d in /opt/*/; do
    [ -d "$d" ] || continue
    name="$(basename "$d")"
    cp -a "$d" "/usr/lib/opt/${name}"
    esc="${name// /\\x20}"
    printf 'L+ /var/opt/%s - - - - /usr/lib/opt/%s\n' "$esc" "$esc" >> "$tmpfiles"
done
rm -rf /opt
mv /opt.bak /opt

# ---- module presets ----
apply_module_presets() {
    local scope="$1" dir="$2" flag=() f verb unit
    [ "$scope" = user ] && flag=(--global)
    for f in "$dir"/45-module-*.preset; do
        [ -f "$f" ] || continue
        while read -r verb unit; do
            case "$verb" in
                enable) systemctl "${flag[@]}" enable "$unit" ;;
                disable) systemctl "${flag[@]}" disable "$unit" ;;
                *) ;;
            esac
        done < "$f"
    done
}
apply_module_presets system /usr/lib/systemd/system-preset
apply_module_presets user /usr/lib/systemd/user-preset
