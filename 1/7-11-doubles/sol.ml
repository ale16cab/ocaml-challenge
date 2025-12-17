let seven_eleven_doubles () = 
  let tira_dado() = Random.int(6) + 1 in
    let dado1 = tira_dado() in 
    let dado2 = tira_dado() in
    match (dado1 + dado2) with 
      7 | 11 -> (true,dado1,dado2) 
    | _ -> (false,dado1,dado2);;