fun myfoldl F y [] = y
| myfoldl F y (x::xs) = F (myfoldl F y xs) x;

myfoldl (fn x => fn y => y+x) 0 [1, 2, 3];