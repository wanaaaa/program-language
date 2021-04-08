fun plus x y = x + y;

fun lasElem list = 
	foldl (fn (second, first) => second ) 0 list;

fun scn_left ff zero xs = 
	foldl (fn (second,first) => first@ [ff second (lasElem first)] ) [zero] xs;

scn_left plus 0 [1, 2, 3]; 





(* fun scn_left zero xs = 
	foldl (fn (second,first) => (second+(hd first))::first ) [zero] xs;	 *)
