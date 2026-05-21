# PENOS Development Phases

This file turns the master specification into build phases with clear deliverables.

## Status

| Phase | Name | Status | Exit condition |
| --- | --- | --- | --- |
| 1 | Foundation ISO | In progress | A Debian 13 Trixie KDE live ISO boots in a VM from tracked `live-build` config. |
| 2 | PENOS Identity | Planned | Boot, login, wallpaper, shell defaults, and first desktop layout feel PENOS-specific. |
| 3 | Developer Edition | Planned | Developer packages, `pen` commands, welcome flow, and performance profiles are usable. |
| 4 | Public Alpha | Planned | Testers can download, verify, install, and report issues against versioned alpha images. |
| 5 | Repository And Updates | Planned | PENOS packages and update metadata ship from a signed APT repository. |
| 6 | Beta And Stable | Planned | Hardware, install, documentation, and update workflows are maintained for real users. |

## Phase 1: Foundation ISO

Build the first reproducible ISO path.

- Track the live-build configuration under `iso/live-build/`.
- Build from Debian 13 Trixie with KDE Plasma and SDDM.
- Keep package lists split into base, desktop, dev tools, and PENOS layers.
- Include the first `pen` CLI skeleton, MOTD, and PENOS `os-release` override.
- Test the ISO in a VM before adding heavy branding work.

## Phase 2: PENOS Identity

Make the desktop visibly PENOS-specific.

- Add the first logo, wallpaper, GRUB, Plymouth, and SDDM asset slots.
- Define KDE defaults for panel, dock direction, dark theme, and glass intensity.
- Add branding hooks only where tracked config files cannot express the change.
- Keep the performance baseline usable on older workstation hardware.

## Phase 3: Developer Edition

Turn the foundation image into a useful workstation.

- Expand the developer package profile.
- Replace the CLI skeleton with install, search, update, upgrade, and doctor flows.
- Add the first welcome and update application prototypes.
- Introduce performance profiles and optional tooling choices.

## Phase 4: Public Alpha

Prepare external testing.

- Version ISO artifacts and checksums.
- Document build, install, VM test, and known-issue workflows.
- Add release notes and issue templates.
- Publish a limited download path for alpha testers.

## Phase 5: Repository And Updates

Create the PENOS package layer.

- Package PENOS CLI, themes, configs, and apps as `.deb` artifacts.
- Stand up a signed Debian-style PENOS APT repository.
- Separate Debian, Flatpak, and PENOS update reporting.

## Phase 6: Beta And Stable

Harden the distro.

- Iterate from hardware and installer feedback.
- Stabilize documentation, recovery notes, release cadence, and update behavior.
- Promote builds only when daily-driver basics hold up.
