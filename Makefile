PREFIX=/usr/local

SCRIPTS=kernel,health-check,curl-md5,sus,sedit

all:

install:
	cp ./scripts/{${SCRIPTS}} $(DESTDIR)$(PREFIX)/bin/
	mkdir -p $(DESTDIR)$(PREFIX)/etc/birb-utils
	cp ./config/* $(DESTDIR)$(PREFIX)/etc/birb-utils/

uninstall:
	rm -vf $(DESTDIR)$(PREFIX)/bin/{${SCRIPTS}}
	rm -vrf $(DESTDIR)$(PREFIX)/etc/birb-utils
