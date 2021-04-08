remove_item(X,[X|Tail],Tail).

remove_item(X,[Y|Tail],[Y|Tail1]):-
  remove_item(X,Tail,Tail1).