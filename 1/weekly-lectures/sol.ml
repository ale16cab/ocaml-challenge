type weekday = Mo | Tu | We | Th | Fr;;
type course = ALF | LIP;;
let isLecture day course = match course, day with
    ALF, Tu -> true
  | ALF, Th -> true
  | ALF, Fr -> true
  | ALF, _ -> false
  | LIP, We -> true
  | LIP, Th -> true
  | LIP, _ -> false;;