PREFIX=/usr/local

SCRIPTS=kernel,health-check,curl-md5,nap

all:

install:
	cp ./scripts/{${SCRIPTS}} $(DESTDIR)$(PREFIX)/bin/

uninstall:
	rm -vf $(DESTDIR)$(PREFIX)/bin/{${SCRIPTS}}
