all: build

build:
	@docker build --tag=cruncher/ubuntu:latest .

release: build
	@docker build --tag=cruncher/ubuntu:$(shell cat VERSION) .
