.DEFAULT_GOAL:=help
SHELL:=/bin/bash

.PHONY: help html

help:  ## Display this help
		@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

html:  ## Generate html
		$(info Genetating html)
		./jemdoc.py index

htmlconf:  ## Generate html
		$(info Genetating html)
		./jemdoc.py -c default.conf index

