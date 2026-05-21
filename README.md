# PENOS — Master Project Specification
Personalized Engineering & Next-Gen Operating System

Project Owner: Infexjay
Product Type: Custom Linux desktop operating system
Base System: Debian 13 “Trixie” Stable Minimal
Primary Goal: Build a beautiful, lightweight, developer-first Linux OS that feels premium, runs well on older hardware like the Lenovo ThinkPad W530, and can later grow into a public downloadable distro with its own update system.

## 1. Executive Vision

PENOS is not meant to be “just another Linux skin.”
It is a full product identity:

A polished, liquid-glass, macOS-inspired Linux operating system for developers, creators, and power users — lightweight enough for real machines, beautiful enough to feel futuristic, and flexible enough to become its own ecosystem.

PENOS will begin as a custom Debian-based Linux distribution, not a kernel-from-scratch OS. That gives the project a realistic path to shipping something users can actually install, test, update, and trust.

The first public version should focus on:

A clean premium desktop
Strong developer tooling
Fast system performance
A branded user experience from boot to desktop
A simple PENOS update channel
An ISO users can download from your website
A foundation that can later become more independent
## 2. Core Product Identity
2.1 Name
PENOS

Possible meaning:

Personalized Engineering Native Operating System

Or more boldly:

Power. Elegance. Next-gen. Operating System.

The name is short, memorable, and techy. Before a serious public launch, the project should still go through a proper brand/domain/trademark check, because variants of “PenOS” already appear in scattered public references online. That does not kill the idea, but it means the name should be legally and commercially checked before scaling.

## 3. Product Positioning
3.1 What PENOS Is

PENOS is:

A desktop Linux distro
A developer-focused daily-driver OS
A lightweight workstation OS
A visually distinctive UI experience
A future platform for Infexjay’s tools and ecosystem
3.2 What PENOS Is Not

At least for the first serious versions, PENOS is not:

A brand-new kernel
A direct Windows replacement for every office user
A heavy gaming-only distro
A security/pentesting-only distro like Kali
A minimal terminal-only toy
A distro built by reinventing package management from day one

That last point matters. Replacing a mature package manager too early is how young operating system projects cook themselves alive. PENOS should build a friendly higher-level command layer, but keep Debian’s proven foundation underneath.

## 4. Base System Decision
4.1 Final Recommendation: Debian-Based PENOS

For PENOS v1, the base should be:

Debian 13 “Trixie” Stable Minimal

As of May 19, 2026, Debian’s current stable release is Debian 13 “Trixie”, with version 13.5 released on May 16, 2026.

4.2 Why Debian?

Debian gives PENOS:

A rock-solid stable base
The APT package ecosystem
Huge software availability
Excellent long-term maintainability
A strong foundation for a public distro
Good compatibility with developer tooling
Proper support for building custom live ISOs through Debian Live / live-build

Debian is the right call because PENOS is supposed to become a real installable OS, not just a clever experiment.

4.3 Why Not Alpine as the Main Desktop Base?

Alpine is excellent for:

Containers
Servers
Minimal systems
Embedded environments
Security-focused lightweight deployments

But for a premium desktop OS like PENOS, Alpine brings more friction than advantage:

Mainstream app compatibility can be more work
Desktop packaging expectations are less convenient
You would spend more time wrestling the base than designing PENOS
The project’s early energy should go into user experience, not compatibility wars

Verdict:

Alpine is great for a tiny, hardcore, highly technical OS. Debian is better for PENOS as a polished public desktop operating system.

4.4 Strategic Base Choice
Goal	Best Choice
Ship a polished public desktop distro	Debian Stable
Keep APT and a huge package ecosystem	Debian
Build a tiny experimental system	Alpine
Build from zero for learning	Linux From Scratch
Maximum rolling-edge flexibility	Arch
Final decision: PENOS uses Debian 13 Trixie Stable Minimal.
## 5. PENOS Versions Roadmap
5.1 Version Families
PENOS Dev

The default edition. Built for developers and power users.

Includes:

VS Code or VSCodium option
Git
Node.js
Python
Rust/C/C++ toolchains
Java optional
Docker or Podman
Terminal enhancements
Browser
Common dev utilities
PENOS Lite

For older or low-end machines.

Includes:

Lighter desktop configuration
Minimal app set
Reduced animations
Fewer background services
Same PENOS identity, less visual weight
PENOS Studio (Later)

For creators, game developers, and media work.

Potential apps:

Blender
Godot
Krita
OBS Studio
Audio/video utilities
Texture and asset helpers
PENOS Security (Much later, optional)

A toolkit-focused edition, not the first release.

This should not be the initial public identity. PENOS should first establish itself as a beautiful daily-driver developer OS, not a “hacker distro clone.”

## 6. Target Hardware
6.1 Primary Reference Machine

Your own machine should be the engineering reference device:

Lenovo ThinkPad W530
Intel Core i7-3740QM
NVIDIA Quadro K2000M
Older, but still capable workstation-class hardware

PENOS should feel smooth on that machine. If it behaves well there, newer systems will breathe easily.

6.2 Target Requirements
Minimum Target
64-bit x86 processor
4 GB RAM
30 GB storage
Intel/AMD/NVIDIA supported graphics
UEFI or BIOS boot
Recommended Target
8 GB RAM
SSD storage
60 GB free disk
GPU acceleration available
## 7. Visual Design Language
7.1 Theme Concept: Liquid Glass Computing

PENOS should have a UI inspired by:

Glassmorphism
Modern macOS polish
Futuristic translucent panels
Soft motion
Clean depth and layered surfaces

Think:

Mac elegance + Linux freedom + sci-fi engineering discipline.

7.2 Desktop Environment Recommendation
Recommended: KDE Plasma

KDE Plasma is the best fit because:

It is highly customizable
It can support a macOS-like workflow convincingly
It supports blur, transparency, rounded UI theming, and compositor effects
It is practical for building a strongly branded desktop experience

Debian provides KDE Plasma packages directly, including the kde-plasma-desktop metapackage.

Why not GNOME?

GNOME is clean and modern, but it is more opinionated and less flexible without relying heavily on extensions.

Why not XFCE?

XFCE is lightweight, but pushing it toward a true liquid-glass premium UI would demand more manual theming and still likely feel less native than KDE.

Decision:

PENOS uses KDE Plasma as its flagship desktop environment.

## 8. PENOS Desktop Experience
8.1 Default Layout
Floating or semi-floating top bar
Bottom dock
Rounded application launcher
Glass-style system tray
Blur-backed notifications
Centered productivity flow
Optional “Classic Layout” later
8.2 Suggested UI Components
PEN Dock
PEN Launcher
PEN Control Center
PEN Settings
PEN Welcome
PEN Update
PEN Terminal
## 9. Boot-to-Desktop Branding

PENOS should look branded at every stage.

9.1 Boot Experience
Custom GRUB background
Branded boot splash
PENOS logo animation
Clean boot text hidden by default
Developer boot logs available in advanced mode
9.2 Login Screen
Custom SDDM theme
Liquid glass login panel
PENOS logo
Dark translucent wallpaper
Smooth fade-in transition
9.3 First Boot Welcome

A PENOS Welcome App should appear after install.

Features:

Welcome to PENOS
Check for system updates
Install recommended tools
Choose visual intensity:
Performance
Balanced
Full Liquid Glass
Developer presets
Link to docs, site, and community
## 10. PENOS Software Philosophy
10.1 Default App Rule

Do not bloat the OS. Ship only what matters.

Core Defaults
Browser
File manager
Terminal
Text editor
System monitor
Archive manager
Screenshot tool
Settings
Calculator
Media player optional
10.2 Developer Defaults

PENOS Dev should include:

Git
Curl/Wget
Python 3
Pip
Node.js
npm
GCC/G++
Make
CMake
Rust toolchain optional in full dev profile
Go optional later
Podman or Docker
SSH tools
Neovim or Nano
VS Code/VSCodium choice during install or first boot
## 11. Package Management Strategy
11.1 Do Not Replace Debian’s Package Manager

Debian’s ecosystem uses APT over .deb packages and Debian repositories. PENOS should preserve that foundation.

Trying to rip out APT and bolt in something entirely new too early would create:

Broken dependency assumptions
Harder support
More package maintenance burden
Less compatibility with upstream Debian tooling
Decision:

APT remains the core package manager. PENOS builds a nicer abstraction on top.

11.2 PENOS User-Friendly Wrapper: pen

PENOS should include a simple command-line experience:

pen install vscode
pen remove blender
pen search godot
pen update
pen upgrade
pen clean
pen doctor

Internally:

pen install git

maps to:

sudo apt install git

Later, pen can intelligently route between:

Debian repositories
PENOS repositories
Flatpak
AppImage helper support, possibly later
11.3 Future Package Layers

PENOS software stack:

APT — system packages and Debian packages
Flatpak — sandboxed desktop apps
PEN Repo — PENOS-specific .deb packages
pen CLI — unified friendly interface
## 12. PENOS Update System
12.1 Objective

Users should be able to update PENOS without terminal fear.

12.2 Components
A. PEN Update App

A GUI app that shows:

Current PENOS version
New version available
Security updates
UI/theme updates
Restart-required status
Release notes
Update source details
B. CLI Support
pen update
pen upgrade
pen update --check
pen update --system
pen update --apps
12.3 Update Sources

PENOS updates can come from:

Debian stable repositories
Debian security repositories
PENOS custom APT repository
Flatpak app updates
12.4 Repository Infrastructure

PENOS should eventually operate its own Debian-style package repository for:

pen-cli
pen-welcome
pen-update
pen-settings
Themes
Wallpapers
Boot branding
Any future PENOS desktop apps

Debian repositories are structured collections of binary/source packages plus metadata and signatures, so PENOS should follow that model rather than inventing its own.

## 13. Development & Hosting Infrastructure
13.1 Oracle Cloud Usage

Your Oracle Cloud account can be used as a development server for:

Build automation
ISO staging
APT repo testing
Package signing experiments
Nightly builds
Documentation staging
Temporary download hosting during early alpha

Use it as a dev/build server, not necessarily your final public infrastructure forever.

13.2 Suggested Server Layout
/penos-builds/
/penos-repo/
/penos-debs/
/penos-docs/
/penos-nightly/
/penos-stable/
## 14. PENOS Repository Layout

Your Git repository can be organized like this:

penos/
├── branding/
│   ├── logos/
│   ├── wallpapers/
│   ├── boot-splash/
│   └── sddm-theme/
│
├── iso/
│   ├── live-build/
│   ├── package-lists/
│   ├── hooks/
│   ├── includes/
│   └── output/
│
├── packages/
│   ├── pen-cli/
│   ├── pen-welcome/
│   ├── pen-update/
│   ├── pen-settings/
│   └── pen-themes/
│
├── configs/
│   ├── kde/
│   ├── shell/
│   ├── system/
│   └── apps/
│
├── repos/
│   ├── apt-repo/
│   ├── metadata/
│   └── signing/
│
├── docs/
│   ├── architecture.md
│   ├── release-plan.md
│   ├── build-guide.md
│   └── contributor-guide.md
│
└── README.md
## 15. Core PENOS Components
15.1 pen-cli

The terminal command center for package and system actions.

Commands
pen help
pen install
pen remove
pen search
pen update
pen upgrade
pen doctor
pen info
pen theme
pen mode
pen gpu
Example
pen doctor

Checks:

Internet access
Disk space
APT package state
Broken packages
PENOS repo reachability
NVIDIA driver situation
Flatpak health
Update channel status
15.2 pen-welcome

First-boot setup wizard.

Features:

Intro to PENOS
Toggle performance profile
Install dev stack
Install media codecs if included by policy or offered via user choice
Set theme intensity
Choose accent color
Link to docs
Open update center
15.3 pen-update

Graphical update center.

Features:

Check updates
Install updates
View changelog
Show update size
Notify when reboot required
Distinguish Debian updates from PENOS custom updates
Rollback notes in future versions
15.4 pen-settings

Custom settings overlay on top of standard KDE settings.

Controls:

Liquid Glass intensity
Animation level
Dock layout
Performance profile
Startup apps
Developer mode
Update channel
Default shell profile
Optional telemetry/crash report setting if ever introduced — disabled by default
## 16. Performance Profiles

PENOS should include three user-selectable profiles.

16.1 Performance Mode
Reduced blur
Reduced animations
Lower transparency
Fewer startup effects
Best for old GPUs or battery life
16.2 Balanced Mode
Moderate glass effects
Smooth animations
Default experience
Ideal for your W530 baseline
16.3 Cinematic Mode
Full blur
Rich transparency
Extra motion polish
Showcase mode for screenshots and promo videos
Default recommendation for ThinkPad W530:

Balanced Mode

## 17. Gaming and GPU Strategy
17.1 NVIDIA Considerations

Your Quadro K2000M is older, so PENOS needs to be careful with:

Driver compatibility
Wayland vs X11 edge cases
Smooth desktop compositor performance
Detecting whether the proprietary or open driver route is more practical for the machine

Debian supports KDE Plasma packages and modern desktop stacks, but PENOS should still make graphics configuration human-friendly rather than dumping Linux driver complexity on the user.

17.2 PENOS GPU Helper
pen gpu status
pen gpu recommend
pen gpu drivers

Possible output:

Detected GPU: NVIDIA Quadro K2000M
Desktop Session: Wayland/X11
Driver Status: Installed / Missing / Generic
Recommendation: Use X11 profile if compositor issues occur
17.3 Gaming Support

Not the core mission, but useful:

Steam optional
Lutris optional
MangoHud optional
GameMode optional

These should be easy to install from PEN Welcome or a future PEN App Center.

## 18. Security Philosophy

PENOS should be safe by design, but not paranoid and annoying.

18.1 Security Defaults
Firewall support available and optionally enabled by default depending on final testing
Automatic update notifications
Flatpak sandboxing encouraged
Sudo remains standard
No unnecessary always-root workflows
Secure Boot considerations later
Signed PENOS repository metadata once public update infra exists
18.2 Privacy
No telemetry by default
No account requirement
No hidden analytics
Any future crash reporting must be opt-in
Clear documentation of all network-facing PENOS services
## 19. ISO Build System
19.1 Recommended Build Approach

For Debian-based PENOS, use:

Debian Live Build (live-build)

The Debian Live project provides tools for creating customized live system images, and live-build is specifically designed to automate and customize ISO/image creation from configuration directories.

19.2 Build Pipeline Concept
Create live-build config
→ Add Debian Trixie base
→ Add KDE Plasma package list
→ Add PENOS packages
→ Inject branding and configs
→ Add hooks and post-build setup
→ Build ISO
→ Test in VM
→ Install on W530
→ Patch
→ Rebuild
19.3 Live-Build Structure Example
iso/live-build/
├── config/
│   ├── package-lists/
│   │   ├── desktop.list.chroot
│   │   ├── devtools.list.chroot
│   │   └── penos.list.chroot
│   │
│   ├── hooks/
│   │   ├── 010-branding.hook.chroot
│   │   ├── 020-kde-config.hook.chroot
│   │   └── 030-services.hook.chroot
│   │
│   └── includes.chroot/
│       ├── usr/share/backgrounds/penos/
│       ├── usr/share/sddm/themes/penos/
│       └── etc/skel/
## 20. PENOS Release Channels
20.1 Stable

For public users.

Fewer updates
Better testing
Download from website
Recommended for real daily use once PENOS reaches maturity
20.2 Beta

For testers.

More frequent builds
Early UI changes
Faster feedback loop
Possible rough edges
20.3 Nightly

For you and contributors.

Very frequent
Experimental
Can break
Best for rapid development
## 21. Website Distribution Plan

PENOS will be downloadable from your website.

21.1 Website Pages
Home
Features
Download
Screenshots
Documentation
Changelog
Roadmap
Community
Contribute
21.2 Download Page Should Show
Latest stable ISO
SHA256 checksum
Release date
File size
Recommended system requirements
Installation guide
Known issues
Mirror/download fallback if needed
## 22. Branding Direction
22.1 Logo Style

PENOS logo should feel:

Sharp
Minimal
Premium
Slightly cyber-futuristic
Not childish

Possible symbol ideas:

Stylized P
Pen nib blended into a power symbol
Glass shard forming a P
Orbit/ring around a central PENOS mark
22.2 Color Direction

Primary themes:

Deep black / graphite
Frosted white
Electric cyan
Neon green optional
Violet/blue accents
## 23. Suggested Slogan Options
PENOS — Built to Think Forward
PENOS — Glass. Speed. Control.
PENOS — Linux, Refined
PENOS — Your Machine, Reimagined
PENOS — Engineered for Makers
Strongest pick:

PENOS — Linux, Refined.

Clean. Mature. Not overcooked.

## 24. Project Development Phases
Phase 1 — Foundation

Goal: Produce a bootable Debian-based PENOS prototype ISO.

Tasks:

Select Debian 13 Trixie Stable Minimal base
Set up live-build
Build first test ISO
Add KDE Plasma desktop
Apply initial PENOS branding
Install basic packages
Test in VM
Phase 2 — PENOS Identity

Goal: Make it feel like PENOS, not default Debian KDE.

Tasks:

Liquid glass theme
Custom login screen
Boot splash
Wallpaper pack
Dock layout
Custom icons
Basic pen command
Phase 3 — Developer Edition

Goal: Turn it into a serious developer workstation.

Tasks:

Developer package bundle
Terminal profile
Welcome app
Update app prototype
Performance presets
Preconfigured shell enhancements
Phase 4 — Public Alpha

Goal: Let early users install it.

Tasks:

Website download page
Checksums
Install guide
Issue tracker
Feedback form
Versioning policy
Phase 5 — Repository + Update System

Goal: PENOS begins becoming an ecosystem.

Tasks:

Host custom APT repository
Sign packages
Publish update metadata
Add pen update
Improve GUI updater
Separate PENOS app/theme updates from raw Debian updates
Phase 6 — Public Beta / Stable

Goal: Usable by actual users, not just screenshots.

Tasks:

Fix installation pain
Improve hardware detection
Create documentation
Add recovery notes
Publish stable ISO
Maintain update cadence
## 25. First Release Scope
PENOS 0.1 Alpha

Should include:

Debian 13 Trixie-based ISO
KDE Plasma desktop
PENOS branding
Liquid glass theme prototype
Dark theme by default
Bottom dock
Top panel
Custom wallpaper
Basic apps
Developer tools starter set
pen CLI skeleton
Manual update support
Installable in VM and on real hardware
PENOS 0.5 Beta

Should add:

Welcome app
Update app
Better settings panel
Performance profiles
Website docs
First tester feedback
Early PENOS APT repository
PENOS 1.0

Should be:

Publicly presentable
Stable enough for daily-use enthusiasts
Clean install process
Reliable updates
Strong brand identity
Proper documentation
Not embarrassing to put on your website

That is the bar. No “v1.0” just because the wallpaper looks fine. We ship when it behaves.

## 26. Technical Decisions Summary
Area	PENOS Decision
Base	Debian 13 “Trixie” Stable Minimal
Desktop	KDE Plasma
UI	Liquid Glass / macOS-inspired
Package manager	APT underneath
Custom command	pen wrapper
App layer	Flatpak support
Update system	PEN Update GUI + CLI
ISO build tool	Debian live-build
Custom package repo	PENOS APT repository
Dev server	Oracle Cloud initially
Target machine	ThinkPad W530 baseline
Public download	Yes, via your website
Main edition	PENOS Dev
## 27. Core Philosophy Manifesto

PENOS stands for a simple idea:

Computers should feel powerful without feeling hostile.
Linux should be free without feeling unfinished.
A developer OS should be clean, fast, and beautiful — not ugly in the name of seriousness.
PENOS will respect the old-school discipline of real engineering while pushing the interface forward.

That is the soul of it.

## 28. Immediate Next Step

The next move is not making the logo. Not yet.

The next move is:

Create the first Debian-based PENOS ISO build plan and repository structure.

That means we define:

Exact Debian 13 Trixie minimal base
Exact KDE package list
Preinstalled developer tools
Boot branding assets
First live-build project structure
First ISO build script
First pen CLI skeleton
