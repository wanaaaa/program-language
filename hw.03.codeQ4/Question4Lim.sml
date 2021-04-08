(* Q4.1 *)
fun avg_list [] = 0.0  
  | avg_list x =
    let
        fun sum[] = 0.0
          | sum(head::tail)= head + sum tail
     in
         (sum x) / real(length x)
     end;

avg_list [1.1, 2.2, 3.3] ;
(*==========================================*)
(* Q4.2 *)
exception NoItem;

fun get_index x i =
  
	if i < 0 orelse i > length x
		then raise NoItem
	else if i = 0 then hd x
	else get_index (tl x) (i-1);

get_index [1, 2, 3] 1;
(*==========================================*)
(* Q4.3 *)
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
(*==========================================*)
(* Q4.4 *)
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
(*==========================================*)
(* Q4.5 *)
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
(*==========================================*)
(* Q4.6 *)
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
(*==========================================*)
(* Q4.7 *)
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
(*==========================================*)
(* Q4.8 *)
exception Mismatch;

fun zip ([],[]) = [] 
	| zip (_,[]) = raise Mismatch 
	| zip ([], _) = raise Mismatch 
	| zip (x::xs,y::ys) = (x,y)::(zip (xs,ys));  

 zip ([1, 2, 3], [4, 5, 6]);
(*==========================================*)
(* Q4.9 *)
fun unzip xs = foldr (fn ((x, y), (listOne, listTwo)) 
	=> (x :: listOne, y :: listTwo)) ([], []) xs;

unzip [(1,4),(2,5),(3,6)];
(*==========================================*)
(* Q4.10 *)
fun reverse xs = foldl op:: [] xs;
fun cutLast list = reverse( tl (reverse list) );

fun scan_left ff num list = 
    let 
        fun myfoldl F y [] = y
            | myfoldl F y (x::xs) = F (myfoldl F y xs) x

        fun loop listOne elist    = 
            if (length listOne)  = 0 then
                num::elist
            else
                loop (cutLast listOne)  ((myfoldl ff num listOne)::elist) 

    in
        loop list []
    end;

scan_left (fn x => fn y => x+y) 0 [1, 2, 3];
(*==========================================*)
(* Q4.11 *)
fun myfoldl F y [] = y
	| myfoldl F y (x::xs) = F (myfoldl F y xs) x;

fun factorial n = if n <= 1 then 1 else n*(factorial (n-1));

fun scan_left f x list = myfoldl f [] list; 

fun countup n =
	let fun countupp 0 l = l
		| countupp i l = countupp (i - 1) (i::l);
	in
		countupp n []
	end
;

fun fac_list n = 
	scan_left  (fn x => fn list =>(factorial list)::x ) 0 (countup n);

fac_list 7;
(*==========================================*)
