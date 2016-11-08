project_root_dir := $(PWD)

brew_dir ?= $(project_root_dir)/.brew
brew_repository ?= https://github.com/Linuxbrew/brew.git

brew := PATH=$(brew_dir)/bin:$$PATH brew

formulae := $(wildcard Formula/*.rb)
formulae := $(formulae:Formula/%.rb=%)

.PHONY: check prepare $(formulae)

check: prepare $(formulae)

prepare:
	mkdir -p $(brew_dir)
	test -d $(brew_dir) || git clone $(brew_repository) $(brew_dir) --depth=5
	cd $(brew_dir) && git fetch origin && git checkout -f origin/master

$(formulae):
	# brew audit will error out when the source url or homepage is a github
	# forked repository. This behaivor is STUPID and REALLY ILLITATING, so
	# I will not use this, instead just try to install it.
	# https://github.com/Homebrew/homebrew/blob/master/Library/Homebrew/cmd/audit.rb#L506
	#$(brew) audit --strict --online $(project_root_dir)/Formula/$@.rb
	$(brew) unlink $@ || true
	$(brew) install $(project_root_dir)/Formula/$@.rb
