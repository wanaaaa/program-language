fun reverse xs = foldl op:: [] xs;
fun cutLast list = reverse( tl (reverse list) );

cutLast [1, 2, 3];