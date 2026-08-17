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
    m14["tectonic-os/goojust"]
    m15["tectonic-os/power-just-scripts"]
    base -->|"mac-policy"| m0
    m0 -->|"build-environment"| m4
    m0 -->|"build-environment"| m11
    m1 -->|"just"| m5
    m1 -->|"just"| m14
    m3 -->|"signature-policy"| m4
    m14 -->|"goojust"| m15
```

## Capabilities

| Name | Kind | Provided by | Required by | After |
|---|---|---|---|---|
| `/etc/pki/containers/cosign.pub` | file | `tectonic-os/signature-policy` |  |  |
| `/usr/libexec/grub2-os-prober-regen` | file | `tectonic-os/bootloader` |  |  |
| `build-environment` | capability | `tectonic-os/fedora-family` | `tectonic-os/auto-updates`, `tectonic-os/hardened-malloc` |  |
| `flatpak` | capability | `tectonic-os/flatpak` |  |  |
| `goojust` | capability | `tectonic-os/goojust` | `tectonic-os/power-just-scripts` |  |
| `hardened-malloc` | capability | `tectonic-os/hardened-malloc` |  |  |
| `initramfs-generation` | capability | `base` |  |  |
| `just` | capability | `tectonic-os/just` | `tectonic-os/system-just-scripts`, `tectonic-os/goojust` |  |
| `mac-policy` | capability | `base` | `tectonic-os/fedora-family` |  |
| `plasma-desktop` | capability | `tectonic-os/kde-desktop` |  |  |
| `rechunking` | capability | `base` |  |  |
| `signature-policy` | capability | `tectonic-os/signature-policy` | `tectonic-os/auto-updates` |  |
