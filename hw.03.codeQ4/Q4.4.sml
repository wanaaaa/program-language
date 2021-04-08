fun get_even_midpoint list  =
    let
        val mid = real(length list) / 2.0 
        val iLength =real(length list) 
        fun getMidEle i iMid [] = 1234.0
            | getMidEle i iMid list = 
            if Real.==(iMid + 1.0 , i) then ((hd list) + (hd (tl list)) ) /2.0
            else getMidEle (i-1.0) iMid (tl list)
    in
        getMidEle iLength mid list
    end;

get_even_midpoint [5.2, 2.3, 6.2, 9.3];
