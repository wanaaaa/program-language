fun get_odd_midpoint list  =
    let
        val mid = (length list) div 2
        fun  getMidEle i iMid list = 
	            if iMid +1 = i then 
	            	hd list
	            else 
	            	getMidEle (i-1) iMid (tl list)
    in
        getMidEle (length list) mid list
    end;

get_odd_midpoint [1, 2, 3];
