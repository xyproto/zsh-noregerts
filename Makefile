.PHONY: all clean install uninstall

PREFIX = /usr
ZSHDIR = /etc/zsh/zshrc.d

all:
	@echo Done

install:
	@mkdir -p $(ZSHDIR)
	@install -m644 zsh-noregerts.zsh $(ZSHDIR)/zsh-noregerts.zsh
	@echo 'Installation completed successfully!'

uninstall:
	@rm -f $(ZSHDIR)/zsh-noregerts.zsh
	@echo 'Uninstallation completed successfully!'
