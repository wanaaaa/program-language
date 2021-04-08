% Qestion2.1
remove_item(X,[X|Tail],Tail).

remove_item(X,[Y|Tail],[Y|Tail1]):-
  remove_item(X,Tail,Tail1).

% Question2.2
membchk(A0, [A1|_]) :- 
    A0 == A1, !.
membchk(A0, [_|R]) :- 
   membchk(A0, R).

remove_items(_, [], []) :- !.
remove_items(B, [A|C], D) :-
   membchk(A, B), !,
   remove_items(B, C, D).
remove_items(C, [A|B], [A|D]) :-
   remove_items(C, B, D).

% Question2.3
intersection([X|Y],M,[X|Z]) :- member(X,M), intersection(Y,M,Z).
intersection([X|Y],M,Z) :- \+ member(X,M), intersection(Y,M,Z).
intersection([],M,[]).


