PREFIX = /usr
BINDIR = $(PREFIX)/bin
SHAREDIR = $(PREFIX)/share/zsh-noregerts
DOCDIR = $(SHAREDIR)/doc
LICENSESDIR = $(SHAREDIR)/licenses
PLUGINDIR = $(SHAREDIR)/plugins
ZSHDIR = /etc/zsh/zshrc.d

.PHONY: install uninstall

install:
	@mkdir -p $(BINDIR)
	@mkdir -p $(DOCDIR)
	@mkdir -p $(LICENSESDIR)
	@mkdir -p $(PLUGINDIR)
	@mkdir -p $(ZSHDIR)
	@install -m755 command-not-found $(BINDIR)/command-not-found
	@install -m644 README.md $(DOCDIR)/README.md
	@install -m644 LICENSE $(LICENSESDIR)/LICENSE
	@echo 'command_not_found_handler() { $(BINDIR)/command-not-found $$@; }' > $(ZSHDIR)/command-not-found.zsh
	@echo 'Installation completed successfully!'

uninstall:
	@rm -f $(BINDIR)/command-not-found
	@rm -f $(DOCDIR)/README.md
	@rm -f $(LICENSESDIR)/LICENSE
	@rm -f $(ZSHDIR)/command-not-found.zsh
	@echo 'Uninstallation completed successfully!'
