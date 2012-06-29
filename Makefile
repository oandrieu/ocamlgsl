all:
	$(MAKE) -C src $@

clean:
	$(MAKE) -C src $@

doc:
	$(MAKE) -C src $@

install:
	$(MAKE) -C src $@

configure: configure.ac ocaml.m4
	aclocal -I . && autoconf
src/config.make: src/config.make.in config.status
	./config.status
config.status: configure
	./config.status --recheck
