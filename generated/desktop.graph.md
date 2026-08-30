# Desktop capability graph

GENERATED FILE, do not edit.

An arrow points from a provider to what needs it, dotted for `after`,
which orders the build without requiring anything. Layers build left to
right.

```mermaid
graph LR
    base["quay.io/fedora/fedora-bootc:44"]
    m0["tectonic-os/fedora-family"]
    m1["tectonic-os/fedora-bootc-workstation-debloat"]
    m2["tectonic-os/just"]
    m3["tectonic-os/bootloader"]
    m4["tectonic-os/signature-policy"]
    m5["tectonic-os/auto-updates"]
    m6["tectonic-os/system-just-scripts"]
    m7["tectonic-os/flatpak"]
    m8["tectonic-os/brew"]
    m9["tectonic-os/cli-tools"]
    m10["tectonic-os/hardening/coredumps"]
    m11["tectonic-os/hardening/login-policy"]
    m12["tectonic-os/hardening/hardened-malloc"]
    m13["tectonic-os/hardening/sudo-hardening"]
    m14["tectonic-os/plymouth"]
    m15["tectonic-os/kde-desktop"]
    m16["tectonic-os/bazaar"]
    m17["tectonic-os/media-codecs"]
    m18["tectonic-os/tect"]
    m19["tectonic-os/dev-tools [dx]"]
    m20["tectonic-os/podman [dx]"]
    m21["tectonic-os/libvirt [dx]"]
    m22["tectonic-os/vscodium [dx]"]
    base -->|"mac-policy"| m0
    m0 -->|"build-environment"| m5
    m0 -->|"build-environment"| m12
    m0 -->|"build-environment"| m14
    m0 -->|"build-environment"| m15
    m0 -->|"build-environment"| m17
    m0 -->|"build-environment"| m22
    m2 -->|"just"| m6
    m4 -->|"signature-policy"| m5
    m7 -->|"flatpak"| m16
    m12 -.->|"hardened-malloc"| m21
    m12 -.->|"hardened-malloc"| m22
```

## Capabilities

| Name | Kind | Provided by | Required by | After |
|---|---|---|---|---|
| `/etc/pki/containers/cosign.pub` | file | `tectonic-os/signature-policy` |  |  |
| `/usr/bin/tect` | file | `tectonic-os/tect` |  |  |
| `/usr/libexec/grub2-os-prober-regen` | file | `tectonic-os/bootloader` |  |  |
| `/usr/share/tectonic/assets` | file | `tectonic-os/tect` |  |  |
| `bazaar` | capability | `tectonic-os/bazaar` |  |  |
| `build-environment` | capability | `tectonic-os/fedora-family` | `tectonic-os/auto-updates`, `tectonic-os/hardening/hardened-malloc`, `tectonic-os/plymouth`, `tectonic-os/kde-desktop`, `tectonic-os/media-codecs`, `tectonic-os/vscodium` |  |
| `flatpak` | capability | `tectonic-os/flatpak` | `tectonic-os/bazaar` |  |
| `hardened-malloc` | capability | `tectonic-os/hardening/hardened-malloc` |  | `tectonic-os/libvirt`, `tectonic-os/vscodium` |
| `initramfs-generation` | capability | `base` |  |  |
| `just` | capability | `tectonic-os/just` | `tectonic-os/system-just-scripts` |  |
| `mac-policy` | capability | `base` | `tectonic-os/fedora-family` |  |
| `plasma-desktop` | capability | `tectonic-os/kde-desktop` |  |  |
| `rechunking` | capability | `base` |  |  |
| `signature-policy` | capability | `tectonic-os/signature-policy` | `tectonic-os/auto-updates` |  |
