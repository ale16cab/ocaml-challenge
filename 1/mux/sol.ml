let mux2 s0 a b : bool = match s0 with 
    true -> a 
  | false -> b;;

let mux2 s0 a b : bool = if s0 then a else b;;

let mux4 s1 s0 a0 a1 a2 a3 : bool = match s1, s0 with 
    true, true -> a3  
  | false, false -> a0 
  | true, false -> a2 
  | _ -> a1;;
let mux4 s1 s0 a0 a1 a2 a3 = if s1 then (if s0 then a3 else a2) else (if s0 then a1 else a0);;