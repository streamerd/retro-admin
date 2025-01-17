.PHONY: build help

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install: package.json ## install dependencies
	echo "Full install..."
	yarn
	
start: package.json
		@yarn start

run: ## run the site locally
	@yarn dev

build: ## compile ES6 files to JS
	@yarn build
