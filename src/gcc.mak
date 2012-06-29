# -*- makefile -*-

CC = gcc

GSL_CONFIG := gsl-config

GSLINCDIR := $(GSL_PREFIX)/include
GSLCFLAGS := $(filter-out -I/usr/include,$(GSL_CFLAGS))
GSLLIBS   := $(filter -l%,$(GSL_LIBS))
GSLLIBDIR := $(filter -L%,$(GSL_LIBS))

CPPFLAGS += $(GSLCFLAGS) -DHAVE_INLINE -DHAVE_FENV
CFLAGS    = -g -O2

O=o
A=a
D=so 
SO=o
DO=o
EXE=
DLLDEF=      # For MSVC, a DLL .DEF file, we don't need it. 

ifdef DYNAMIC_LINKING
MKDLL=$(OCAMLMKLIB) -oc $(1) $(2) $(GSLLIBS) $(GSLLIBDIR)
MKLIB=$(OCAMLMKLIB) -oc $(1) $(2) $(GSLLIBS) $(GSLLIBDIR)
MKCMA=$(OCAMLMKLIB) -oc $(1) -o $(2) $(3) $(GSLLIBS) $(GSLLIBDIR)
MKCMXA=$(OCAMLMKLIB) -oc $(1) -o $(2) $(3) $(GSLLIBS) $(GSLLIBDIR)
else
MKDLL=$(error cannot make DLL)
MKLIB=ar crus lib$(1).a $(2)
MKCMA=$(OCAMLC) -a -o $(2).cma -custom $(3) -cclib -l$(1) $(addprefix -cclib ,$(GSLLIBS)) $(if $(GSLLIBDIR),-ccopt '$(GSLLIBDIR)')
MKCMXA=$(OCAMLOPT) -a -o $(2).cmxa     $(3) -cclib -l$(1) $(addprefix -cclib ,$(GSLLIBS)) $(if $(GSLLIBDIR),-ccopt '$(GSLLIBDIR)')
endif

SCFLAGS=
DCFLAGS=
