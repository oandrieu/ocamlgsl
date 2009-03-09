# -*- makefile -*-

CC = gcc

GSL_CONFIG := gsl-config

GSLPREFIX := $(shell $(GSL_CONFIG) --prefix)
GSLINCDIR := $(GSLPREFIX)/include
GSLCFLAGS := $(filter-out -I/usr/include,$(shell $(GSL_CONFIG) --cflags))
GSLLIBS   := $(filter -l%,$(shell $(GSL_CONFIG) --libs))
GSLLIBDIR := $(filter -L%,$(shell $(GSL_CONFIG) --libs))

CPPFLAGS += $(GSLCFLAGS) -DHAVE_INLINE -DHAVE_FENV
CFLAGS    = -g -O2

O=o
A=a
D=dll
SO=s.o
DO=d.o
EXE=.exe
DLLDEF=      # For MSVC, a DLL .DEF file, we don't need it. 
BYTECC=gcc -mno-cygwin

DLLNAME=dll$(1).$(D)
DLLTARGET=$(DLLNAME)
LIBTARGET=lib$(1).$(A)

MKDLL=$(BYTECC) -shared -o $(DLLTARGET) -Wl,--out-implib,$(DLLTARGET).a $(2) $(3) \
	$(OCAMLDIR)/ocamlrun.a $(OCAMLDIR)/dllbigarray.a  $(GSLLIBS) $(GSLLIBDIR)

MKLIB=rm -f $(LIBTARGET); ar rcs $(LIBTARGET) $(2) 
MKCMA=$(OCAMLC) -a -o $(2).cma -cclib -l$(1) -dllib -l$(1) $(3)
MKCMXA=$(OCAMLOPT) -a -o $(2).cmxa -cclib -l$(1)  $(3)

SCFLAGS=-o $(1)
DCFLAGS=-DCAML_DLL -o $(1)

LN_FS=mv
