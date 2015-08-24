# Introduction #

This is an interface to [GSL](http://www.gnu.org/software/gsl/) (GNU scientific library), for the Objective Caml langage.


# Requirements #
  * gsl >= 1.9
  * ocaml >= 3.07
  * awk and GNU make
  * gcc or MSVC

The platform must not need to align doubles on double-word addresses, i.e. `ARCH_ALIGN_DOUBLE` must be undefined in `<caml/config.h>`.


# Building & installing #
  * have a look at the variables in `Makefile` and `gcc.mak/msvc.mak`.<br> Comment out <code>DYNAMIC_LINKING</code> if it isn't supported on your platform.<br>
<ul><li><code>make</code>
</li><li>(optional) <code>make install INSTALLDIR=/absolute/path/to/installdir</code><br> or: <code>make install-findlib</code></li></ul>

to link : <code>ocamlopt -I gsldir bigarray.cmxa gsl.cmxa my_prog.ml</code><br>
or : <code>ocamlc -I gsldir -dllpath gsldir bigarray.cma gsl.cma my_prog.ml</code>


<h1>Changes</h1>
cf. the <a href='NEWS.md'>NEWS</a> file to see what's changed between ocamlgsl versions.<br>
<br>
<br>
<h1>Documentation</h1>
Check the <a href='http://www.gnu.org/software/gsl/manual/html_node/index.html'>GSL manual</a> ! You can browse the module interfaces with the<br>
ocamldoc-generated HTML files in the doc/ directory.<br>
<br>
<br>
<h1>Vectors / Matrices</h1>
There are several datatypes for handling vectors and matrices.<br>
<br>
<ul><li>modules Gsl_vector, Gsl_vector.Single, Gsl_vector_complex, Gsl_vector_complex.Single and the corresponding matrix modules use bigarrays with single or double precisions real or complex values.<br>
</li><li>modules Gsl_vector_flat, Gsl_vector_complex_flat and the corresponding matrix modules use a record wrapping a regular caml float array. This is the equivalent of the gsl_vector and gsl_matrix structs in GSL.<br>
</li><li>module Gsl_vectmat defines a sum type with polymorphic variants that regroups these two representations.<br> For instance : <code>Gsl_vectmat.v_add (`V v1) (`VF v2)</code> adds a vector in a caml array to a bigarray.<br>
</li><li>modules Gsl_blas Gsl_blas_flat and Gsl_blas_gen provide a (quite incomplete) interface to CBLAS for these types.</li></ul>


<h1>Error handling</h1>
Errors in GSL functions are reported as exceptions: <code>Gsl_error.Gsl_exn (errno, msg)</code>.<br>
You have to call <code>Gsl_error.init ()</code> so as to initialize error reporting; otherwise, the default GSL error handler is used and aborts the program, leaving a core dump (not so helpful with caml).<br>
<br>
If a callback (for minimizers, solvers, etc.) raises an exception, ocamlgsl either return <code>GSL_FAILURE</code> or <code>NaN</code> to GSL, depending on the type of callback. In either case the original caml exception is not propagated. The GSL function will either return normally (but probably with values containing NaNs somewhere) or raise a <code>Gsl_exn</code> exception.