tag ?= jino
version ?=latest

.PHONY: build run

common:
	@echo 'For building docker image again use : make build'
	@echo 'For running docker container : make run'

build:
	@docker build . -t $(tag):$(version)
run:
	@docker run --rm -it -p 8080:80 $(tag):$(version)

