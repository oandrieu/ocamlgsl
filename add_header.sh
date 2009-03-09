#! /bin/sh

FILES="$@"

for f in $FILES
do
    CHECK_ML=${f%.ml*}
    if [ $CHECK_ML == $f ]
    then  # it is C
    echo \
"/* ocamlgsl - OCaml interface to GSL                        */
/* Copyright (©) 2002 - Olivier Andrieu                     */
/* distributed under the terms of the GPL version 2         */
" > $f.in
    else # OK it is ml then
    echo \
"(* ocamlgsl - OCaml interface to GSL                        *)
(* Copyright (©) 2002 - Olivier Andrieu                     *)
(* distributed under the terms of the GPL version 2         *)
" > $f.in
    fi
    cat $f >> $f.in
    mv $f.in $f
done

