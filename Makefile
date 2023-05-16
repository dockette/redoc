DOCKER_IMAGE=dockette/redoc:latest

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
