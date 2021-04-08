fun avg_list [] = 0.0  
  | avg_list x =
    let
        fun sum[] = 0.0
          | sum(head::tail)= head + sum tail
     in
         (sum x) / real(length x)
     end;

avg_list [1.1, 2.2, 3.3] ;