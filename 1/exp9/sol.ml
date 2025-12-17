let square = function x -> x * x;;
let rec exp (num, iter) = match iter with
  1 -> num
| _ -> exp(num * 2, iter - 1);;
let exp9 x = 
  let rec aux (base, esp, conta) = match esp with
    0 -> conta
  | e when e mod 2 = 0 -> 
    aux (square base, esp / 2, conta)
  | _ -> aux(base, esp - 1, conta * base) 
in aux(x,9,1);; (* rivedi *)