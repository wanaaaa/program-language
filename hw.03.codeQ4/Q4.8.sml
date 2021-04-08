exception Mismatch;

fun zip ([],[]) = [] 
	| zip (_,[]) = raise Mismatch 
	| zip ([], _) = raise Mismatch 
	| zip (x::xs,y::ys) = (x,y)::(zip (xs,ys));      

 zip ([1, 2, 3], [4, 5, 6]);