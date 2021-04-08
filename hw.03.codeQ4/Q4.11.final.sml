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
