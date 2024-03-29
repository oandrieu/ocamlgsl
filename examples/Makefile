
include ../src/config.make

OCAMLBCFLAGS := -g
OCAMLNCFLAGS := -unsafe

SRC := cheb.ml diff.ml fit.ml integration.ml interp.ml min.ml monte.ml \
       multifit_data.ml multifit.ml permut.ml qrng.ml rng.ml root.ml \
       linalg.ml blas.ml multiroot.ml multimin.ml sum.ml multifit_nlin.ml \
       eigen.ml siman.ml siman_tsp.ml odeiv.ml stats.ml const.ml histo.ml \
       wavelet.ml bspline.ml fft_c.ml fft_c2.ml fft_hc.ml

PROGS     := $(patsubst %.ml,%.test,$(SRC))
PROGS_OPT := $(patsubst %.ml,%.test.opt,$(SRC))

LIBS    = bigarray.cma gsl.cma
LIBSOPT = $(LIBS:%.cma=%.cmxa)

MLGSLDIR = ../src

all : $(PROGS) $(PROGS_OPT)

interp.test interp.test.opt : LIBS += unix.cma
odeiv.test odeiv.test.opt : LIBS += unix.cma

%.test : %.ml $(MLGSLDIR)/gsl.cma $(MLGSLDIR)/libmlgsl.a
	$(OCAMLC) $(PP) $(OCAMLBCFLAGS) -o $@ -I $(MLGSLDIR) -dllpath $(MLGSLDIR) $(LIBS) $<

%.test.opt : %.ml $(MLGSLDIR)/gsl.cmxa $(MLGSLDIR)/libmlgsl.a
	$(OCAMLOPT) $(PP) $(OCAMLNCFLAGS) -o $@ -I $(MLGSLDIR) $(LIBSOPT) $<

.PHONY : clean all 

clean :
	rm -f *.cm* *.[ao] *.so core *.test *.test.opt $(TRASH)

