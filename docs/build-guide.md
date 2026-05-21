# PENOS Build Guide

Phase 1 builds from a container so the live-build toolchain stays explicit.

## Build Container

From the repository root:

```sh
docker build -f Dockerfile.ubuntu-build -t penos-ubuntu-build .
docker run --rm -it --privileged \
  -v "$PWD:/workspace" \
  penos-ubuntu-build
```

The container needs the repository mounted at `/workspace` because the build script defaults to that path.

## Build ISO

Inside the build container:

```sh
./scripts/build-penos-live.sh
```

The Phase 1 ISO output path is:

```text
builds/output/PENOS-0.1-alpha-amd64.iso
```

The build log path is:

```text
logs/penos-live-build.log
```

## Live-Build Inputs

- Image options: `iso/live-build/auto/config`
- Package lists: `iso/live-build/config/package-lists/`
- PENOS files injected into the image: `iso/live-build/config/includes.chroot/`

Generated live-build state and ISO artifacts are ignored by Git.
