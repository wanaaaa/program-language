fun plus x y = x + y;

fun reverse xs = foldl op:: [] xs;

fun sumList ff zero xs  =
	foldl (fn (second,first) => (ff second (hd first))::first ) [zero] xs;

fun scn_left ff zero xs = 
	reverse (sumList ff zero xs);

scn_left plus 0 [1, 2, 3]; 





(* fun scn_left zero xs = 
	foldl (fn (second,first) => (second+(hd first))::first ) [zero] xs;	 *)
