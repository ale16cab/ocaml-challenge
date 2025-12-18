let consensus3 (f0,f1,f2) n = 
  let equal_functions fun1 fun2 input = (fun1(input) = fun2(input)) in
  if (equal_functions f0 f1 n || equal_functions f0 f2 n) then Some (f0(n)) else if (equal_functions f1 f2 n) then Some (f1(n)) else None;;