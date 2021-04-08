fun myfoldl F y [] = y
	| myfoldl F y (x::xs) = F (myfoldl F y xs) x;

fun reverse xs = foldl op:: [] xs;

fun scan_left f x list = reverse (  myfoldl f [x] (reverse list) );

scan_left (fn x => fn y =>  ((hd x) + y)::x) 0 [1, 2, 3];