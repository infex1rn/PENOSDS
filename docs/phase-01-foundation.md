# Phase 1: Foundation ISO

## Goal

Produce the first spec-aligned PENOS ISO path from Debian 13 Trixie, KDE Plasma, and tracked `live-build` configuration.

## Current Deliverables

- Build container with Debian live-build tooling.
- `scripts/build-penos-live.sh` as the build entrypoint.
- `iso/live-build/auto/config` as the live-build configuration entrypoint.
- Package lists split by purpose.
- Initial PENOS files injected through `config/includes.chroot/`.

## Build Shape

```text
iso/live-build/
|-- auto/config
`-- config/
    |-- includes.chroot/
    `-- package-lists/
```

The `auto/config` command defines image-level options such as the Debian distribution, ISO metadata, mirrors, and boot arguments. Package lists and files injected into the chroot stay tracked as separate config files so later phases can add branding and PENOS packages without rewriting the build script.

## Exit Criteria

Phase 1 is done when:

1. A clean build creates `builds/output/PENOS-0.1-alpha-amd64.iso`.
2. The ISO boots in a VM into a KDE Plasma login or session flow.
3. `cat /etc/os-release`, `/etc/motd`, and `pen info` show PENOS alpha identity.
4. The build guide records the exact build and VM smoke-test commands.

## Next Tasks

1. Run the first full Trixie/KDE ISO build in the build container.
2. Add a VM smoke-test script for the produced ISO.
3. Decide the first boot path for alpha: live session only or live plus installer.
4. Add KDE defaults and branding assets in Phase 2 after the foundation boots reliably.
