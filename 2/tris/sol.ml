let tris (a,b,c,d) = 
  let is_equal item1 item2 = item1 = item2 in
  if (((is_equal a b) && (is_equal a c)) 
      || ((is_equal a c) && (is_equal a d)) 
      || ((is_equal b c) && (is_equal b d))) then true else false;;
let hand () = ((Random.int(10) + 1),(Random.int(10) + 1),(Random.int(10) + 1),(Random.int(10) + 1));;