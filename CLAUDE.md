# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Docker image that combines Docker-in-Docker (dind) with kubectl. It's designed for CI/CD pipelines that need both container building capabilities and Kubernetes deployment access.

## Build and Tag

Images use the versioning format `<docker-version>-<kubectl-version>-<revision>`:

```bash
docker build -t txn2/docker-kubectl:29.1.3-1.35.0-2 .
```

## Architecture

The image is based on `docker:29.1.3-dind` (Alpine-based Docker-in-Docker) and adds:
- `curl` and `git` utilities
- `kubectl` v1.35.0 binary at `/bin/kubectl`

This is a single-Dockerfile project with no additional source code or tests.