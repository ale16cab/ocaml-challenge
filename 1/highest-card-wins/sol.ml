type card = Joker | Val of int;;

let win player dealer = 
  let is_joker c = match c with 
    Joker -> true 
    | _ -> false in 
    if (is_joker player && is_joker dealer) then false else
      if (is_joker player) then true else
        if (is_joker dealer) then false else 
          if (player > dealer) then true else false;;