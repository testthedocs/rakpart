# The shell we use
SHELL := /bin/bash

# We like colors
# From: https://coderwall.com/p/izxssa/colored-makefile-for-golang-projects
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`
YELLOW=`tput setaf 3`

# Name
NAME = testthedocs/ttd-textlint
# Get version form VERSION
VERSION := $(shell cat VERSION)

# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'
.PHONY: help
help: ## This help message
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m:\2/' | column -c2 -t -s :)"

.PHONY: image
image: ## Builds docker image
	docker build -f dockerfiles/Dockerfile --no-cache=true --force-rm -t $(NAME):$(VERSION) .

.PHONY: testhtml
html: ## Running a html test build in picky mode
	@echo ""
	@echo "$(YELLOW)==> Testing HTML of docs  ....$(RESET)"
	docker run --rm -v "${PWD}/docs":/build/docs:rw -u "$$(id -u)":"$$(id -g)" quay.io/tiramisu/mr.docs testhtml

.PHONY: push
push: ## Pushes images
	docker push $(NAME):$(VERSION)
	docker push $(NAME):latest

.PHONY: tag_latest
tag_latest: ## Tag image with version and latest tag
	docker tag $(NAME):$(VERSION) $(NAME):latest

.PHONY: last_built_date
last_built_date: ## Show last build date
	docker inspect -f '{{ .Created }}' $(NAME):$(VERSION)

.PHONY: release
release: testhtml image tag_latest push ## Combine steps to make release

