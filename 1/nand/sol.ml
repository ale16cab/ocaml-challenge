let nand a b = match a, b with 
        false, _ -> true 
      | _, false -> true 
      | _ -> false;;