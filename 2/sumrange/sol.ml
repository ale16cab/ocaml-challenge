let sumrange a b = 
  let rec aux index sum = 
    if (index <= b) 
    then aux (index + 1) (sum + index) 
    else sum in aux a 0;;