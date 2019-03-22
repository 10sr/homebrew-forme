project_root_dir := $(PWD)
uname := $(shell uname -s)

ifeq ($(uname),Darwin)
brew_repository ?= https://github.com/Homebrew/brew.git
else
brew_repository ?= https://github.com/Linuxbrew/brew.git
endif

brew_dir ?= $(project_root_dir)/.brew
brew := PATH=$(brew_dir)/bin:$$PATH $(brew_dir)/bin/brew

formulae_files := $(wildcard Formula/*.rb)
formulae := $(formulae_files:Formula/%.rb=%)

.PHONY: check prepare $(formulae)

check: prepare $(formulae)

prepare:
	mkdir -p $(brew_dir)
	test -d $(brew_dir)/.git || git clone $(brew_repository) $(brew_dir) --depth=5
	#cd $(brew_dir) && git fetch origin && git checkout -f origin/master
	$(brew) upgrade

$(formulae):
	# brew audit will error out when the source url or homepage is a github
	# forked repository. This behaivor is STUPID and REALLY ILLITATING, so
	# I will not use this, instead just try to install it.
	# https://github.com/Homebrew/brew/blob/master/Library/Homebrew/dev-cmd/audit.rb#L583
	#$(brew) audit --strict --online $(project_root_dir)/Formula/$@.rb
	$(brew) uninstall $@ || true
	$(brew) install -v $(project_root_dir)/Formula/$@.rb
