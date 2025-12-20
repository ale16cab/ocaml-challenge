let countzero f a b = 
  let rec aux index maxval count = 
    if index >= maxval then count 
    else if f(index) = 0 then aux (index + 1) maxval (count + 1)
    else aux (index + 1) maxval count in aux a b 0;;