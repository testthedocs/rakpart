# The shell we use
SHELL := /bin/bash

# We like colors
# From: https://coderwall.com/p/izxssa/colored-makefile-for-golang-projects
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`
YELLOW=`tput setaf 3`

# Name
NAME = testthedocs/ttd-mdlint
# Get version form VERSION
VERSION := $(shell cat VERSION)

# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'
.PHONY: help
help: ## This help message
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m:\2/' | column -c2 -t -s :)"

.PHONY: image
image: ## Builds docker image
	docker build --no-cache=true --force-rm -t $(NAME):$(VERSION) .

.PHONY: testhtml
html: ## Running a html test build in picky mode
	@echo ""
	@echo "$(YELLOW)==> Testing HTML of docs  ....$(RESET)"
	docker run --rm -v "${PWD}/docs":/build/docs:rw -u "$$(id -u)":"$$(id -g)" quay.io/tiramisu/mr.docs testhtml

.PHONY: html
html: ## Building HTML for prod deploy
	@echo ""
	@echo "$(YELLOW)==> Building HTML  ....$(RESET)"
	@cp VERSION docs
	docker run --rm -v "${PWD}/docs":/build/docs:rw -u "$$(id -u)":"$$(id -g)" quay.io/tiramisu/mr.docs html
	@rm docs/VERSION

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

.PHONY: linkcheck
linkcheck: ## Runs link-check
	@echo ""
	@echo "$(YELLOW)==> Checking Links  ....$(RESET)"
	docker run --rm -v "${PWD}/docs":/build/docs:rw -u "$$(id -u)":"$$(id -g)" quay.io/tiramisu/mr.docs linkcheck

.PHONY: alex
alex: ## Run alex against the docs.
	@echo ""
	@echo "$(YELLOW)==> Running alex ...$(RESET)"
	@docker run -it --rm -v "$(PWD)/docs/_build/markdown":/build mr.alex "$$@"
	@echo "$(YELLOW)==> Removing markdown ...$(RESET)"
	@rm -rf docs/_build/markdown

.PHONY: markdown
markdown: ## Convert HTML into markdown for alex
	 @echo ""
	 @echo "$(YELLOW)==> Creating markdown ...$(RESET)"
	 @rm -rf docs/_build/markdown
	 @docker run -it --rm -v ${PWD}/docs/_build:/source:rw -u "$$(id -u)":"$$(id -g)" mr.pandoc

.PHONY: manners-check
manners-check: markdown alex ## Runs makdown and alex as one target/step
	@echo ""
	@echo "$(YELLOW)==> Checking our manners ...$(RESET)"
