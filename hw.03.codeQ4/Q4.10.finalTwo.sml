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