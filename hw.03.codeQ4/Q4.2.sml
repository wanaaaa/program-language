exception NoItem;

fun get_index x i =
  
	if i < 0 orelse i > length x
		then raise NoItem
	else if i = 0 then hd x
	else get_index (tl x) (i-1);

get_index [1, 2, 3] 1;
