let parrot_trouble (is_talking : bool) (hour : int) : bool option =
    if (((hour < 7 && hour > 0) || (hour > 20 && hour < 23)) && (is_talking)) then Some true
    else if (hour < 0 || hour > 23) then None
    else Some false;; 