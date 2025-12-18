exception NotAFraction;;
exception NotPositive;;
let is_posfrac (a,b) = 
  let check_div div = 
    if (div == 0) then false else true 
  in
  if (not(check_div b)) then raise NotAFraction
  else if (a/b >= 0) then true else false;;

let compare_posfrac (a1,b1) (a2,b2) = 
  if (not(is_posfrac(a1,b1)) || not(is_posfrac(a2,b2))) 
    then failwith "not positive" 
      else
      let convert x = float_of_int x in
        let frac (a,b) = ((convert a) /. (convert b)) in 
          let f1 = (frac(a1,b1)) in 
            let f2 = (frac(a2,b2)) in
          if (f1 = f2) then 0 
          else if (f1 > f2) then 1
          else -1;;
let compare_frac (a1,b1) (a2,b2) = 
  let check_div div = 
    if (div == 0) then false else true 
  in 
  if (not(check_div b1 || not(check_div b2))) 
    then failwith "Not a fraction" 
      else
  let convert x = float_of_int x in
        let frac (a,b) = ((convert a) /. (convert b)) in 
          let f1 = (frac(a1,b1)) in 
            let f2 = (frac(a2,b2)) in
          if (f1 = f2) then 0 
          else if (f1 > f2) then 1
          else -1;;
