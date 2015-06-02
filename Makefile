PREFIX ?= /usr
DESTDIR ?=
BINDIR ?= $(PREFIX)/bin
PRODIR ?= /etc/profile.d
NAME = pass-sshaskpass

.PHONY: install uninstall

all:
	@echo "This is a shell script, so there is nothing to do. Try \"make install\" instead."

install:
	@install -Dm 0755 -v src/pass-sshaskpass.sh "$(DESTDIR)$(BINDIR)/$(NAME)"
	@install -Dm 0755 -v src/profile.sh "$(DESTDIR)$(PRODIR)/$(NAME).sh"

uninstall:
	@rm -vf "$(DESTDIR)$(BINDIR)/$(NAME)" "$(DESTDIR)$(PRODIR)/$(NAME).sh" "$(DESTDIR)$(FISHDIR)/$(NAME).fish"
