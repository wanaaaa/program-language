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

fun get_median list  =
    let
        val mid = real(length list) / 2.0 
        val iLength =real(length list) 
        val oddEven = real((length list) mod 2)
        
        fun getMidEle i iMid oE [] = 1234.0
            | getMidEle i iMid oE list = 
            if Real.==(iMid + 1.0 , i) orelse Real.==(i, iMid + 0.5)  then 
                if Real.==(oE, 0.0) then
                    ((hd list) + (hd (tl list)) ) /2.0
                else hd list
                
            else
                getMidEle (i-1.0) iMid oE (tl list)
    in
        getMidEle iLength mid oddEven (quickSort op< list)
    end;

get_median [4.0, 3.0, 1.0, 2.0];