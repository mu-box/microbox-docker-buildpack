
.PHONY: all build run

all: build run

build:
	docker build \
		-t mubox/buildpack-build \
		build

	docker push mubox/buildpack-build

run:
	docker build \
		-t mubox/buildpack-run \
		run

	docker push mubox/buildpack-run

