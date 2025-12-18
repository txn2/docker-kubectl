IMAGE := txn2/docker-kubectl
TAG := $(shell git describe --tags --abbrev=0 2>/dev/null || echo "latest")

.PHONY: build tag push all

build:
	docker build -t $(IMAGE):$(TAG) .

test: build
	docker run --rm $(IMAGE):$(TAG) kubectl version --client

tag: build
	docker tag $(IMAGE):$(TAG) $(IMAGE):latest

push: tag
	docker push $(IMAGE):$(TAG)
	docker push $(IMAGE):latest

all: push
