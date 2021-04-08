fun quickSort op < [] = []
    | quickSort op < [x] = [x]
    | quickSort op < (a:: bs) =
        let fun deposit (x, (left , right )) =
                if x < a then 
                    (x:: left , right )
                else (left , x:: right )
            val (left , right ) = foldr deposit ([] , [a]) bs
        in
            quickSort op < left @ quickSort op < right
        end;

quickSort op< [3.0, 2.0, 5.0, 1.0];