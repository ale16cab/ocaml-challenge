type suit = S | H | D | C;;
type card = Card of int * suit;;

let straight (fir,sec,thi,fou,fif) : bool =
  let get_value card = match card 
  with Card(value,seed) -> value in 
    let v1 = get_value fir in
    let v2 = get_value sec in
    let v3 = get_value thi in
    let v4 = get_value fou in
    let v5 = get_value fif in
  if (v1 <= v2 && v2 <= v3 && v3 <= v4 && v4 <= v5) 
    then true else false;;
