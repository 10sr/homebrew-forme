project_root_dir := $(PWD)

brew_dir ?= $(project_root_dir)/.brew
brew_repository ?= https://github.com/Homebrew/linuxbrew.git

formulae := $(wildcard Formula/*.rb)
formulae := $(formulae:Formula/%.rb=%)

.PHONY: check prepare $(formulae)

check: prepare $(formulae)

prepare:
	test -d $(brew_dir) || git clone $(brew_repository) $(brew_dir) --depth=5
	cd $(brew_dir) && git fetch origin && git checkout -f origin/master

$(formulae):
	PATH=$(brew_dir)/bin:$$PATH brew install $(project_root_dir)/Formula/$@.rb
