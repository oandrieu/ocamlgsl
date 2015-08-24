## 1.10.0 ##
  * ocamlgsl version number now indicates the required major+minor GSL version
  * improved error support: GSL errors are now handled by an OCaml function. By default it raises the `Gsl_exn` exception, but it can be redefined to ignore some errors.
  * callbacks: now exceptions raised in OCaml callback functions are propagated and are no longer "absorbed". Mind that for some functions (`Gsl_monte.integrate_miser` for one) this can result in a memory leak in GSL.
  * fixes for multimin (Markus)
  * fixes for exceptions on "all-float" functions
  * update the buildsystem (autoconf)
  * support for gsl\_stats\_correlation

## 0.6.0 ##
  * sync with GSL 1.9
    * Nonsymmetric eigensystems in Gsl\_eigen
    * Basis splines
    * misc. other things, cf. GSL 1.9 NEWS file

## 0.5.3 ##
  * compile with ocaml 3.10
  * fix GC bugs with C functions taking a callbak parameter (min, multimin, multifit, etc.)

## 0.5.2 ##
  * fix Gsl\_sf.legendre\_array\_size

## 0.5.1 ##
  * fix wrong declaration of externals in gsl\_wavelet (Will M. Farr)
  * rewrite the blurb about callbacks raising exceptions (see below)
  * drop the mode argument Gsl\_cheb.eval ("not for casual use")
  * fix GC bug in Gsl\_cheb

## 0.5.0 ##
  * sync with GSL 1.8
    * fix Gsl\_cdf
    * wrap new functions: gsl\_multifit\_linear\_est, gsl\_linalg\_cholesky\_decomp\_unit, gsl\_ran\_gamma\_mt, gsl\_ran\_gaussian\_ziggurat, gsl\_sf\_debye\_5, gsl\_sf\_debye\_6
  * sync with GSL 1.7
    * add Gsl\_randist.binomial\_knuth, add Gsl\_multifit.`_`linear\_svd

## 0.4.1 ##
  * make several record types 'private'. This disallows building bogus values that could crash the program.
  * remove several unsafe manual memory-management functions from module signatures
  * added Associated Legendre Polynomials and Spherical Harmonics in Gsl\_sf (Will M. Farr)
  * fixed the type Gsl\_fft.Complex.direction (Joe Shirron)
  * fixed the type of Gsl\_randist.negative\_binomial and negative\_binomial\_pdf (Martin Willensdorfer)

## 0.4.0 ##
  * sync with GSL 1.6
    * new module Gsl\_wavelet for DWT
    * new module Gsl\_sort
    * in Gsl\_linalg, support for LQ and P^T LQ decompositions
    * add a mode argument in Gsl\_cheb.eval
    * add RK2SIMP in Gsl\_odeiv.step\_kind
    * a couple of other small additions
  * bugfix for functions in Gsl\_sf returning a result\_e10
  * better support for Cygwin (James Scott, Lexifi)

## 0.3.5 ##
  * improve build system a bit so that it works better on cygwin (thanks to Brian Wilfley)
  * fix bugs in Gsl\_odeiv (thanks to Will M. Farr)

## 0.3.4 ##
  * fix a GC bug in the error handler, simplify exception raising code
  * add Qrng.dimension and Qrng.sample

## 0.3.3 ##
  * report an error when building on a platform with ARCH\_ALIGN\_DOUBLE defined
  * findlib support

## 0.3.2 ##
  * complex functions (contributed by Paul Pelzl)

## 0.3.1 ##
  * bugfix in Gsl\_interp.eval\_array
  * mlgsl\_ieee.c now compiles with gcc 2.9x
  * build system improvements

## 0.3.0 ##
  * sync with GSL 1.4
    * new module Gsl\_cdf for cumulative distributions
    * new function Gsl\_randist.binomial\_tpe
  * compiles with MSVC (contributed by Lexifi)
  * memory bugfix in adaptative integration routines
  * bugfix in Gsl\_ieee.set\_mode, added FPU status word querying
  * changed arguments order in Gsl\_matrix.transpose: first arg is destination, second is source

## 0.2.2 ##
  * sync with GSL 1.3
    * new multidimensional minimizer (Nelder Mead Simplex algorithm)
    * new random distributions : Dirichlet and multinomial
    * new function Gsl\_math.fcmp for approximate floating point values comparisons
  * fixed some potential problems with the GC

## 0.2.1 ##
  * Gsl\_linalg.matmult is now Gsl\_linalg.matmult
  * Gsl\_matrix.mul is now Gsl\_matrix.mul\_elements (same for Gsl\_matrix.div)
  * vector/matrix macros work with gcc 2.9x (old\_gcc target in Makefile)

## 0.2 ##
  * rewrote the vector/matrix modules to add single precision bigarrays and complex values
  * added complex functions in Gsl\_linalg and Gsl\_eigen
  * added Ordinary Differential Equations
  * added Simulated Annealing
  * added Statistics and Histograms

## 0.1.1 ##
  * fixed install target in Makefile
  * fixed several C stub function names
  * fixed a bug in ext\_quot in quot.ml