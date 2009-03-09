
let print_data { Gsl_fft.data = a } =
  for i = 0 to Array.length a - 1 do
    Printf.printf "%d: %e\n" i a.(i)
  done ;
  Printf.printf "\n"

let init_data n =
  let data = Array.make n 0. in
  Array.fill data (n / 3) (n / 3) 1. ;
  { Gsl_fft.layout = Gsl_fft.Real ; data = data }

let main n = 
  let data = init_data n in
  print_data data ;
  let ws = Gsl_fft.Real.make_workspace n
  and wt = Gsl_fft.Real.make_wavetable n in
  Gsl_fft.Real.transform data wt ws ;
  Array.fill data.Gsl_fft.data 11 (n - 11) 0. ;
  let wt_hc = Gsl_fft.Halfcomplex.make_wavetable n in
  Gsl_fft.Halfcomplex.inverse data wt_hc ws ;
  print_data data

let _ =
  main 100
