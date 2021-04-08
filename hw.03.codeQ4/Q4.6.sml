fun listsum query [] = false
  | listsum query list =
    let
        fun sum [] = 0
          | sum(head::tail)= head + sum tail

        fun sumOrnot x =
            if x = (sum list) then true
            else false        
     in
        sumOrnot query
     end;

listsum 6 [1, 2, 3] ;