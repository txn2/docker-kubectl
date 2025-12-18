# Docker - Kubectl

Kubectl installed in an alpine based image from docker. Used for container building and k8s deployments in CI/CD.

## Versioning

Images are versioned using the format `<docker-version>-<kubectl-version>-<revision>`. The Makefile automatically uses the latest git tag.

## Make Targets

```bash
make build   # Build with latest git tag
make test    # Build and verify kubectl works
make tag     # Build and tag as latest
make push    # Build, tag, and push both
make all     # Same as push
```

## Release

```bash
git tag 29.1.3-1.35.0-3
make push
```
