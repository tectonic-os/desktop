#!/usr/bin/env bash
# GENERATED FILE, do not edit.
set -euxo pipefail

MODDIR=/ctx/modules/.remote/tectonic-os/kde-desktop
export MODDIR

source /ctx/lib/family.sh

install_packages 'plasma-desktop' 'plasma-workspace' 'plasma-workspace-wallpapers' 'plasma-login-manager' 'kcm-plasmalogin' 'plasma-setup' 'kwin' 'kscreen' 'kscreenlocker' 'plasma-breeze' 'breeze-icon-theme' 'kde-gtk-config' 'kde-settings-plasmalogin' 'kde-settings-pulseaudio' 'polkit-kde' 'xdg-desktop-portal-kde' 'plasma-nm' 'plasma-pa' 'plasma-systemmonitor' 'bluedevil' 'pam-kwallet' 'kwalletmanager5' 'plasma-print-manager' 'plasma-browser-integration' 'plasma-firewall' 'plasma-firewall-firewalld' 'dolphin' 'konsole' 'ark' 'spectacle' 'kate' 'kate-plugins' 'kate-krunner-plugin' 'ksystemlog' 'kamera' 'gvfs' 'gvfs-client' 'gvfs-fuse' 'firewalld' 'accountsservice' 'tuned' 'tuned-ppd' 'thermald' 'switcheroo-control' 'input-remapper' 'udisks2' 'upower' 'xdg-user-dirs' 'systemd-oomd-defaults' 'pipewire' 'pipewire-pulseaudio' 'wireplumber' 'NetworkManager-wifi' 'NetworkManager-bluetooth' 'wpa_supplicant' 'bluez' 'pinentry-qt'

cp -rT /ctx/modules/.remote/tectonic-os/kde-desktop/files /
