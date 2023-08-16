PREFIX=/usr/local

SCRIPTS=kernel,health-check,curl-md5,sus

all:

install:
	cp ./scripts/{${SCRIPTS}} $(DESTDIR)$(PREFIX)/bin/

uninstall:
	rm -vf $(DESTDIR)$(PREFIX)/bin/{${SCRIPTS}}
