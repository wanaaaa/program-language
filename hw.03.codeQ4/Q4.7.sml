fun isten [] = false
  | isten list =
    let
      fun sum [] = 0
        | sum(head::tail)= head + sum tail

      fun sumOrnot x =
            if x = (sum list) then true
            else false  
       
    in
      sumOrnot 10
    end;

isten [1, 2, 7] ;