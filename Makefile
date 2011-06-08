DESTDIR=
prefix=/usr/local

build:
	$(LD) -Wall $(CFLAGS) -o expect_create_userspace expect_create_userspace.c -lnetfilter_conntrack

install:
	mkdir -p $(DESTDIR)$(prefix)/bin/
	cp -v masterless-expectation.sh expect_create_userspace $(DESTDIR)$(prefix)/bin/
oops:
	sudo sh ./masterless-expectation.sh

