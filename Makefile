# Makefile for lazy people, like me
# The shell we use
SHELL := /bin/bash

DOCKER := $(bash docker)

# We like colors
# From: https://coderwall.com/p/izxssa/colored-makefile-for-golang-projects
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`
YELLOW=`tput setaf 3`

# Add the following 'help' target to your Makefile
# # And add help text after each target name starting with '\#\#'
.PHONY: help
help: ## This help message
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m:\2/' | column -c2 -t -s :)"

.PHONY: docs
docs: ## Builds HTML of the docs for local QA/Testing
	@echo "$(YELLOW)==> Building HTML  ....$(RESET)"
	docker run --rm -v "${PWD}/docs":/build/docs:rw testthedocs/ttd-sphinx html

#.PHONY: check-docker
#check-docker: ## Run hadolint against Dockerfiles
#	@echo "$(YELLOW)==> Running Hadolint against Dickerfiles  ....$(RESET)"
#	@docker run --rm -i hadolint/hadolint hadolint --ignore DL3018 - < dockerfiles/Dockerfile

.PHONY: check-rst
check-rst: ## Runs docs8, rst checks
	@echo "$(YELLOW)==> Running doc8 checks against rst files ...$(RESET)"
	@rm -rf docs/_build
	@docker run -it -v "${PWD}/docs":/srv/data testthedocs/ttd-doc8

.PHONY: check-links
check-links: ## Run linkcheck, ignoring "localhost"
	@echo "$(YELLOW)==> Running Linkcheck ...$(RESET)"
	@rm -rf docs/_build
	@docker run -it -v "${PWD}/docs":/srv/test testthedocs/ttd-linkcheck

.PHONY: check-toctree
check-toctree: ## Checks for for multiple "number entries" in toctrees
	@echo "$(YELLOW)==> Checking toctree entries ...$(RESET)"
	@docker run -it -v "${PWD}/docs":/build/docs testthedocs/ttd-toctree

.PHONY: new-check
new-check: ## Creates boilperplate of a new check using narvin
	@docker run -it -v "${PWD}":/srv/data testthedocs/marvin create-rakpart-check
