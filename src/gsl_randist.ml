(* ocamlgsl - OCaml interface to GSL                        *)
(* Copyright (©) 2002-2012 - Olivier Andrieu                *)
(* distributed under the terms of the GPL version 3         *)


(* GAUSSIAN *)
external gaussian : Gsl_rng.t -> sigma:float -> float
    = "ml_gsl_ran_gaussian"

external gaussian_ratio_method : Gsl_rng.t -> sigma:float -> float
    = "ml_gsl_ran_gaussian_ratio_method"

external gaussian_ziggurat : Gsl_rng.t -> sigma:float -> float 
    = "ml_gsl_ran_gaussian_ziggurat"

external gaussian_pdf : float -> sigma:float -> float
    = "ml_gsl_ran_gaussian_pdf"


external ugaussian : Gsl_rng.t -> float
    = "ml_gsl_ran_ugaussian"

external ugaussian_ratio_method : Gsl_rng.t -> float
    = "ml_gsl_ran_ugaussian_ratio_method"

external ugaussian_pdf : float -> float
    = "ml_gsl_ran_ugaussian_pdf"


(* GAUSSIAN TAIL *)
external gaussian_tail : Gsl_rng.t -> a:float -> sigma:float -> float
    = "ml_gsl_ran_gaussian_tail"

external gaussian_tail_pdf : float -> a:float -> sigma:float -> float
    = "ml_gsl_ran_gaussian_tail_pdf"

external ugaussian_tail : Gsl_rng.t -> a:float -> float
    = "ml_gsl_ran_ugaussian_tail"

external ugaussian_tail_pdf : float -> a:float -> float
    = "ml_gsl_ran_ugaussian_tail_pdf"


(* BIVARIATE *)
external bivariate_gaussian : 
    Gsl_rng.t -> sigma_x:float -> sigma_y:float -> rho:float -> float * float
    = "ml_gsl_ran_bivariate_gaussian"

external bivariate_gaussian_pdf : 
    x:float -> y:float -> sigma_x:float -> sigma_y:float -> rho:float -> float
    = "ml_gsl_ran_bivariate_gaussian_pdf"


(* EXPONENTIAL *)
external exponential : Gsl_rng.t -> mu:float -> float 
    = "ml_gsl_ran_exponential"

external exponential_pdf : float -> mu:float -> float 
    = "ml_gsl_ran_exponential_pdf"

(* LAPLACE *)
external laplace : Gsl_rng.t -> a:float -> float 
    = "ml_gsl_ran_laplace"

external laplace_pdf : float -> a:float -> float 
    = "ml_gsl_ran_laplace_pdf"

(* EXPPOW *)
external exppow : Gsl_rng.t -> a:float -> b:float -> float 
    = "ml_gsl_ran_exppow"

external exppow_pdf : float -> a:float -> b:float -> float
    = "ml_gsl_ran_exppow_pdf"

(* CAUCHY *)
external cauchy : Gsl_rng.t -> a:float -> float 
    = "ml_gsl_ran_cauchy"

external cauchy_pdf : float -> a:float -> float 
    = "ml_gsl_ran_cauchy_pdf"

(* RAYLEIGH *)
external rayleigh : Gsl_rng.t -> sigma:float -> float 
    = "ml_gsl_ran_rayleigh"

external rayleigh_pdf : float -> sigma:float -> float 
    = "ml_gsl_ran_rayleigh_pdf"

(* RAYLEIGH TAIL *)
external rayleigh_tail : Gsl_rng.t -> a:float -> sigma:float -> float 
    = "ml_gsl_ran_rayleigh_tail"

external rayleigh_tail_pdf : float -> a:float -> sigma:float -> float 
    = "ml_gsl_ran_rayleigh_tail_pdf"

(* LANDAU *)
external landau : Gsl_rng.t -> float
    = "ml_gsl_ran_landau"

external landau_pdf : float -> float
    = "ml_gsl_ran_landau_pdf"

(* LEVY ALPHA-STABLE *)
external levy : Gsl_rng.t -> c:float -> alpha:float -> float 
    = "ml_gsl_ran_levy"

(* LEVY SKEW ALPHA-STABLE *)
external levy_skew : Gsl_rng.t -> c:float -> alpha:float -> beta:float -> float 
    = "ml_gsl_ran_levy_skew"

(* GAMMA *)
external gamma : Gsl_rng.t -> a:float -> b:float -> float 
    = "ml_gsl_ran_gamma"

external gamma_int : Gsl_rng.t -> a:int -> float 
    = "ml_gsl_ran_gamma_int"

external gamma_pdf : float -> a:float -> b:float -> float
    = "ml_gsl_ran_gamma_pdf"

external gamma_mt : Gsl_rng.t -> a:int ->  b:float -> float
    = "ml_gsl_ran_gamma_mt"

external gamma_knuth : Gsl_rng.t -> a:int ->  b:float -> float
    = "ml_gsl_ran_gamma_knuth"

(* FLAT *)
external flat : Gsl_rng.t -> a:float -> b:float -> float 
    = "ml_gsl_ran_flat"

external flat_pdf : float -> a:float -> b:float -> float
    = "ml_gsl_ran_flat_pdf"

(* LOGNORMAL *)
external lognormal : Gsl_rng.t -> zeta:float -> sigma:float -> float 
    = "ml_gsl_ran_lognormal"

external lognormal_pdf : float -> zeta:float -> sigma:float -> float
    = "ml_gsl_ran_lognormal_pdf"

(* CHI-SQUARED *)
external chisq : Gsl_rng.t -> nu:float -> float 
    = "ml_gsl_ran_chisq"

external chisq_pdf : float -> nu:float -> float 
    = "ml_gsl_ran_chisq_pdf"

(* DIRICHLET *)
external dirichlet : Gsl_rng.t -> alpha:float array -> theta:float array -> unit
    = "ml_gsl_ran_dirichlet"

external dirichlet_pdf : alpha:float array -> theta:float array -> float
    = "ml_gsl_ran_dirichlet_pdf"

external dirichlet_lnpdf : alpha:float array -> theta:float array -> float
    = "ml_gsl_ran_dirichlet_lnpdf"

(* F DISTRIBUTION *)
external fdist : Gsl_rng.t -> nu1:float -> nu2:float -> float 
    = "ml_gsl_ran_fdist"

external fdist_pdf : float -> nu1:float -> nu2:float -> float
    = "ml_gsl_ran_fdist_pdf"

(* T DISTRIBUTION *)
external tdist : Gsl_rng.t -> nu:float -> float 
    = "ml_gsl_ran_tdist"

external tdist_pdf : float -> nu:float -> float 
    = "ml_gsl_ran_tdist_pdf"

(* BETA *)
external beta : Gsl_rng.t -> a:float -> b:float -> float 
    = "ml_gsl_ran_beta"

external beta_pdf : float -> a:float -> b:float -> float
    = "ml_gsl_ran_beta_pdf"

(* LOGISTIC *)
external logistic : Gsl_rng.t -> a:float -> float 
    = "ml_gsl_ran_logistic"

external logistic_pdf : float -> a:float -> float 
    = "ml_gsl_ran_logistic_pdf"

(* PARETO *)
external pareto : Gsl_rng.t -> a:float -> b:float -> float 
    = "ml_gsl_ran_pareto"

external pareto_pdf : float -> a:float -> b:float -> float
    = "ml_gsl_ran_pareto_pdf"


(* SPHERICAL *)
external dir_2d : Gsl_rng.t -> float * float
    = "ml_gsl_ran_dir_2d"

external dir_2d_trig_method : Gsl_rng.t -> float * float
    = "ml_gsl_ran_dir_2d_trig_method"

external dir_3d : Gsl_rng.t -> float * float * float
    = "ml_gsl_ran_dir_3d"

external dir_nd : Gsl_rng.t -> float array -> unit
    = "ml_gsl_ran_dir_nd"

(* WEIBULL *)
external weibull : Gsl_rng.t -> a:float -> b:float -> float 
    = "ml_gsl_ran_weibull"

external weibull_pdf : float -> a:float -> b:float -> float
    = "ml_gsl_ran_weibull_pdf"

(* TYPE 1 GUMBEL *)
external gumbel1 : Gsl_rng.t -> a:float -> b:float -> float 
    = "ml_gsl_ran_gumbel1"

external gumbel1_pdf : float -> a:float -> b:float -> float
    = "ml_gsl_ran_gumbel1_pdf"

(* TYPE 2 GUMBEL *)
external gumbel2 : Gsl_rng.t -> a:float -> b:float -> float 
    = "ml_gsl_ran_gumbel2"

external gumbel2_pdf : float -> a:float -> b:float -> float
    = "ml_gsl_ran_gumbel2_pdf"


(* DISCRETE *)
type discrete
external _discrete_preproc : float array -> discrete
    = "ml_gsl_ran_discrete_preproc"

external discrete : Gsl_rng.t -> discrete -> int
    = "ml_gsl_ran_discrete" "noalloc"

external discrete_pdf : int -> discrete -> float
    = "ml_gsl_ran_discrete_pdf"

external discrete_free : discrete -> unit
    = "ml_gsl_ran_discrete_free"

let discrete_preproc arr = 
  let d = _discrete_preproc arr in
  Gc.finalise discrete_free d ;
  d


(* POISSON *)
external poisson : Gsl_rng.t -> mu:float -> int
    = "ml_gsl_ran_poisson"

external poisson_pdf : int -> mu:float -> float
    = "ml_gsl_ran_poisson_pdf"

(* BERNOULLI *)
external bernoulli : Gsl_rng.t -> p:float -> int
    = "ml_gsl_ran_bernoulli"

external bernoulli_pdf : int -> p:float -> float
    = "ml_gsl_ran_bernoulli_pdf"

(* BINOMIAL *)
external binomial : Gsl_rng.t -> p:float -> n:int -> int
    = "ml_gsl_ran_binomial"

external binomial_knuth : Gsl_rng.t -> p:float -> n:int -> int
    = "ml_gsl_ran_binomial_knuth"

external binomial_tpe : Gsl_rng.t -> p:float -> n:int -> int
    = "ml_gsl_ran_binomial_tpe"

external binomial_pdf : int -> p:float -> n:int -> float
    = "ml_gsl_ran_binomial_pdf"

(* MULTINOMIAL *)
external multinomial : Gsl_rng.t -> n:int -> p:float array -> int array
    = "ml_gsl_ran_multinomial"

external multinomial_pdf : p:float array -> n:int array -> float
    = "ml_gsl_ran_multinomial_pdf"

external multinomial_lnpdf : p:float array -> n:int array -> float
    = "ml_gsl_ran_multinomial_lnpdf"


(* NEGATIVE BINOMIAL *)
external negative_binomial : Gsl_rng.t -> p:float -> n:int -> int
    = "ml_gsl_ran_negative_binomial"

external negative_binomial_pdf : int -> p:float -> n:int -> float
    = "ml_gsl_ran_negative_binomial_pdf"

(* PASCAL *)
external pascal : Gsl_rng.t -> p:float -> k:int -> int
    = "ml_gsl_ran_pascal"

external pascal_pdf : int -> p:float -> n:int -> float
    = "ml_gsl_ran_pascal_pdf"

(* GEOMETRIC *)
external geometric : Gsl_rng.t -> p:float -> int
    = "ml_gsl_ran_geometric"

external geometric_pdf : int -> p:float -> float
    = "ml_gsl_ran_geometric_pdf"

(* HYPER GEOMETRIC *)
external hypergeometric : Gsl_rng.t -> n1:int -> n2:int -> t:int -> int
    = "ml_gsl_ran_hypergeometric"

external hypergeometric_pdf : int -> n1:int -> n2:int -> t:int -> float
    = "ml_gsl_ran_hypergeometric_pdf"

(* LOGARITHMIC *)
external logarithmic : Gsl_rng.t -> p:float -> int
    = "ml_gsl_ran_logarithmic"

external logarithmic_pdf : int -> p:float -> float
    = "ml_gsl_ran_logarithmic_pdf"

(* SHUFFLING *)
external shuffle : Gsl_rng.t -> 'a array -> unit
    = "ml_gsl_ran_shuffle"

external choose : Gsl_rng.t -> src:'a array -> dst:'a array -> unit
    = "ml_gsl_ran_choose"

external sample : Gsl_rng.t -> src:'a array -> dst:'a array -> unit
    = "ml_gsl_ran_sample"
