let guess5 n = 
  let check x = 
    if (n >= 1 && n <= 5) 
      then true else false 
  in if (not (check n)) then failwith "Number out of range [1..5]"
  else if (n = (Random.int(5) + 1)) then (true,n) else (false,n);; 
