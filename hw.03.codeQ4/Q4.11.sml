fun factorial n = if n <= 1 then 1 else n*(factorial (n-1));

fun scan_left xs = 
	foldr (fn (second,first) => (factorial second)::first) [] xs;	

fun countup n =
	let fun countupp 0 l = l
		| countupp i l = countupp (i - 1) (i::l);
	in
		countupp n []
	end
;	

fun fac_list n =
	scan_left (countup n);

fac_list 5;










