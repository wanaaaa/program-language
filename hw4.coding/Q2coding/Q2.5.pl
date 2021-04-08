remove_item(_, [], []) :- !.
remove_item(B, [A|C], D) :-
   memberchk(A, B), !,
   remove_item(B, C, D).
remove_item(C, [A|B], [A|D]) :-
   remove_item(C, B, D).

union([X|Y],Z,W) :- member(X,Z),  union(Y,Z,W).
union([X|Y],Z,[X|W]) :- \+ member(X,Z), union(Y,Z,W).
union([],Z,Z).

intersection([X|Y],M,[X|Z]) :- member(X,M), intersection(Y,M,Z).
intersection([X|Y],M,Z) :- \+ member(X,M), intersection(Y,M,Z).
intersection([],M,[]).

disjoint_union(X, Y, RE) :- 
	union(X, Y, Z), 
	intersection(X, Y, II),
	remove_item(II, Z, RE).