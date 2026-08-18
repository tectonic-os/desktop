# Desktop capability graph

GENERATED FILE, do not edit.

An arrow points from a provider to what needs it, dotted for `after`,
which orders the build without requiring anything. Layers build left to
right.

```mermaid
graph LR
    base["quay.io/fedora/fedora-bootc:44"]
    m0["tectonic-os/fedora-family"]
    m1["tectonic-os/just"]
    m2["tectonic-os/bootloader"]
    m3["tectonic-os/signature-policy"]
    m4["tectonic-os/auto-updates"]
    m5["tectonic-os/system-just-scripts"]
    m6["tectonic-os/flatpak"]
    m7["tectonic-os/brew"]
    m8["tectonic-os/cli-tools"]
    m9["tectonic-os/coredumps"]
    m10["tectonic-os/login-policy"]
    m11["tectonic-os/hardened-malloc"]
    m12["tectonic-os/sudo-hardening"]
    m13["tectonic-os/kde-desktop"]
    m14["tectonic-os/bazaar"]
    m15["tectonic-os/media-codecs"]
    m16["tectonic-os/dev-tools [dx]"]
    m17["tectonic-os/podman [dx]"]
    m18["tectonic-os/libvirt [dx]"]
    m19["tectonic-os/vscodium [dx]"]
    base -->|"mac-policy"| m0
    m0 -->|"build-environment"| m4
    m0 -->|"build-environment"| m11
    m0 -->|"build-environment"| m15
    m1 -->|"just"| m5
    m3 -->|"signature-policy"| m4
    m6 -->|"flatpak"| m14
    m11 -.->|"hardened-malloc"| m18
    m11 -.->|"hardened-malloc"| m19
```

## Capabilities

| Name | Kind | Provided by | Required by | After |
|---|---|---|---|---|
| `/etc/pki/containers/cosign.pub` | file | `tectonic-os/signature-policy` |  |  |
| `/usr/libexec/grub2-os-prober-regen` | file | `tectonic-os/bootloader` |  |  |
| `bazaar` | capability | `tectonic-os/bazaar` |  |  |
| `build-environment` | capability | `tectonic-os/fedora-family` | `tectonic-os/auto-updates`, `tectonic-os/hardened-malloc`, `tectonic-os/media-codecs` |  |
| `flatpak` | capability | `tectonic-os/flatpak` | `tectonic-os/bazaar` |  |
| `hardened-malloc` | capability | `tectonic-os/hardened-malloc` |  | `tectonic-os/libvirt`, `tectonic-os/vscodium` |
| `initramfs-generation` | capability | `base` |  |  |
| `just` | capability | `tectonic-os/just` | `tectonic-os/system-just-scripts` |  |
| `mac-policy` | capability | `base` | `tectonic-os/fedora-family` |  |
| `plasma-desktop` | capability | `tectonic-os/kde-desktop` |  |  |
| `rechunking` | capability | `base` |  |  |
| `signature-policy` | capability | `tectonic-os/signature-policy` | `tectonic-os/auto-updates` |  |
