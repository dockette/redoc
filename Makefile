DOCKER_IMAGE=dockette/redoc:latest
VERSION:=$(shell cat VERSION)

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
	@date -u +%Y.%m.%d > VERSION
	@echo "VERSION: ${VERSION} -> $$(cat VERSION)"
	@echo "next: git commit -am \"Release: $$(cat VERSION)\" && git push"
