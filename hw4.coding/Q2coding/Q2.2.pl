memberchk(A0, [A1|_]) :- 
    A0 == A1, !.
memberchk(A0, [_|R]) :- 
   memberchk(A0, R).

remove_items(_, [], []) :- !.
remove_items(B, [A|C], D) :-
   memberchk(A, B), !,
   remove_items(B, C, D).
remove_items(C, [A|B], [A|D]) :-
   remove_items(C, B, D).