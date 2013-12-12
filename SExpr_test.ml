module SE = SExpr

let str = "
(alpha
   (beta gamma delta)
   (epsilon zeta)
   (eta
      (theta iota kappa)
      (lambda mu nu xi omicron))
   (pi
      (rho (sigma tau))
      (upsilon (phi chi psi))
      (omega)))
"

let () =
  let expr = SE.parse_string str in
  SE.print_sexpr expr
