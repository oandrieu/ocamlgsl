AC_INIT(ocamlgsl,1.10.0)

AC_PROG_AWK

AM_PATH_GSL([1.10],
  [GSL_PREFIX=$($GSL_CONFIG --prefix)
   AC_SUBST([GSL_PREFIX])],
  [AC_MSG_ERROR([Could not find suitable GSL])]
)

AC_PROG_OCAML
if test "$OCAMLC" = "no"; then
  AC_MSG_ERROR([Please install the OCaml compiler])
fi
AC_PROG_FINDLIB
if test "$OCAMLFIND" = "no"; then
  unset OCAMLFIND
fi

AC_CONFIG_FILES([src/config.make])
AC_OUTPUT
