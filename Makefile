PREFIX=/usr/local

SCRIPTS=kernel,health-check,curl-md5,sus,sedit

all:

install:
	cp ./scripts/{${SCRIPTS}} $(DESTDIR)$(PREFIX)/bin/
	mkdir -p /etc/birb-utils
	cp ./config/* /etc/birb-utils/

uninstall:
	rm -vf $(DESTDIR)$(PREFIX)/bin/{${SCRIPTS}}
	rm -vrf /etc/birb-utils
