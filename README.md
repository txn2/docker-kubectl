# Docker - Kubectl

Kubectl installed in an alpine based image from docker. Used for container building and k8s deployments in CI/CD.

```
docker build -t txn2/docker-kubectl:latest .
docker tag txn2/docker-kubectl:latest txn2/docker-kubectl:20.10.8-1.20.1

docker push txn2/docker-kubectl:latest
docker push txn2/docker-kubectl:20.10.8-1.20.1
```
