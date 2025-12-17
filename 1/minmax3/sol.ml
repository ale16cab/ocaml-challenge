let minmax3 a b c = 
  let check_min_ab = if a < b then a else b in
  let check_min_abc = if check_min_ab < c then check_min_ab else c in
  let check_max_ab = if a > b then a else b in
  let check_max_abc = if check_max_ab > c then check_max_ab else c in
  (check_min_abc, check_max_abc);;
