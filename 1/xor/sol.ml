let xor a b = match a,b with 
          true, true -> false 
        | false, false -> false 
        | _ -> true