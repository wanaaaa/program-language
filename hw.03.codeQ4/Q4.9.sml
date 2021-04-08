fun unzip xs = foldr (fn ((x, y), (listOne, listTwo)) 
	=> (x :: listOne, y :: listTwo)) ([], []) xs;

unzip [(1,4),(2,5),(3,6)];