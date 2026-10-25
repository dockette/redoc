DOCKER_IMAGE=dockette/redoc:latest

include VERSION

.PHONY: build
build:
	docker buildx \
		build \
		-t ${DOCKER_IMAGE} \
		-f .docker/Dockerfile \
		.


.PHONY: run
run: 
	docker run -it --rm -p 8000:8000 ${DOCKER_IMAGE}

.PHONY: version
version:
	@echo ${VERSION}

.PHONY: release
release:
	@sed -i.bak "s/^VERSION=.*/VERSION=$$(date -u +%Y.%m.%d)/" VERSION && rm VERSION.bak
	@cat VERSION
