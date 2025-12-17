type season = Spring | Summer | Autumn | Winter;;

let squirrel_play (gradi, stag) = 
  if ((gradi >= 15 && gradi <= 30)) then true
  else if ((gradi >= 30 && gradi <= 35) && stag == Summer) then true
  else false;;