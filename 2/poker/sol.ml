type suit = S | H | D | C;;
type card = Card of int * suit;;
let rndHand () = 
  let find_suit number = match (number mod 4) with 
      0 -> S 
    | 1 -> H 
    | 2 -> D 
    | 3 -> C 
    | _ -> failwith "no" in 
  ((Card(Random.int(13) + 1, (find_suit (Random.int(100) + 1)))), (Card(Random.int(13) + 1, (find_suit (Random.int(100) + 1)))), (Card(Random.int(13) + 1, (find_suit (Random.int(100) + 1)))), (Card(Random.int(13) + 1, (find_suit (Random.int(100) + 1)))), (Card(Random.int(13) + 1, (find_suit (Random.int(100) + 1)))));;

let poker (c1,c2,c3,c4,c5) : bool =
  let rec get_value card = 
    match card with Card(value,suit) -> value in 
      let v1 = get_value c1 in
      let v2 = get_value c2 in
      let v3 = get_value c3 in
      let v4 = get_value c4 in
      let v5 = get_value c5 in
      if ((v1 = v2 && v1 = v3 && v1 = v4) 
        || (v1 = v2 && v1 = v3 && v1 = v5)
        || (v1 = v2 && v1 = v4 && v1 = v5)
        || (v1 = v3 && v1 = v4 && v1 = v5)
        || (v2 = v3 && v2 = v4 && v2 = v5)) then true else false;;
