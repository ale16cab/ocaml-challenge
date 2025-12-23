let has_one n = 
  let rec aux numb = 
    if (numb mod 10 = 1) then true 
    else if numb = 0 then false 
    else aux (numb / 10) in aux n;;