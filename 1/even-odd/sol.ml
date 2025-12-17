let is_even = function
  | 0 -> true
  | x -> (x mod 2 = 0 && x > 0);;
let win (a : int) (b : int) : int = 
  let check value = value < 1 || value > 5 in 
    if (check a) && (check b) then 0
    else if (check a) then -1
    else if (check b) then 1
    else if is_even (a + b) then 1
    else -1;;
