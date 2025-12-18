# Docker - Kubectl

Kubectl installed in an alpine based image from docker. Used for container building and k8s deployments in CI/CD.

## Build

```bash
docker build -t txn2/docker-kubectl .
```

## Tagging

Images are versioned using the format `<docker-version>-<kubectl-version>`:

```bash
docker build -t txn2/docker-kubectl:29.1.3-1.35.0 .
docker tag txn2/docker-kubectl:29.1.3-1.35.0 txn2/docker-kubectl:latest
```

## Push

```bash
docker push txn2/docker-kubectl:29.1.3-1.35.0
docker push txn2/docker-kubectl:latest
```
