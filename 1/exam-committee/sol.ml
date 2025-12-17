type vote = StrongReject | WeakReject | WeakAccept | StrongAccept;;

let decide_exam v1 v2 v3 = match (v1,v2,v3) with
  | (_,_,StrongReject) -> false
  | (_,StrongReject,_) -> false
  | (StrongReject,_,_) -> false 
  | _ -> true;;