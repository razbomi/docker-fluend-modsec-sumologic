IMAGE := razbomi/docker-fluend-modsec-sumologic:latest

.PHONY: build push test
.DEFAULT_GOAL: test

test:
	true

build:
	docker build -t $(IMAGE) ./

push:
	docker login -u $(DOCKER_USERNAME) -p $(DOCKER_PASSWORD)
	docker push -t $(IMAGE) ./
