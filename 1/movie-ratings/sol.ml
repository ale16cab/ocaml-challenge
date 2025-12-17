exception OutOfRange;;
let movie_rating r1 r2 r3 = 
  if ((r1 < 0 || r1 > 5) || (r2 < 0 || r2 > 5) || (r3 < 0 || r3 > 5)) 
  then raise OutOfRange
  else match (r1,r2,r3) with 
    | (5,5,5) -> "Masterpiece"
    | (5,5,4) | (5,4,5) | (4,5,5) -> "Highly Recommended"
    | (4,4,3) | (4,3,4) | (3,4,4) | (4,4,4) -> "Recommended"
    | _ -> "Mixed Reviews";;