let dice n = 
  let casual = Random.float(1.0) in
    let numb = float_of_int n in
      let prob = (numb /. 100.) in 
        if (casual < prob) then 6 else (Random.int 5) + 1;; 