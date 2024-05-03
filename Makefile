PREFIX=/usr/local

SCRIPTS=kernel,health-check,curl-md5,sus

all:

install:
	cp ./scripts/{${SCRIPTS}} $(DESTDIR)$(PREFIX)/bin/
	mkdir -p $(DESTDIR)$(PREFIX)/etc/birb-utils
	cp ./config/pkg_edit.conf $(DESTDIR)$(PREFIX)/etc/birb-utils/

uninstall:
	rm -vf $(DESTDIR)$(PREFIX)/bin/{${SCRIPTS}}
	rm -vrf $(DESTDIR)$(PREFIX)/etc/birb-utils
