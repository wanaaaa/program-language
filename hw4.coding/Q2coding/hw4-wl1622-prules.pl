%Qestion1.4
female(Person).

siblings(A,B):-parent(P,A),parent(P,B),A\=B. 

uncle(U,N):-male(U),siblings(U,P),parent(P,N). 
aunt(A,N):- female(A),siblings(A,P),parentP,N).

% Qestion2.1
remove_item(X,[X|Tail],Tail).

remove_item(X,[Y|Tail],[Y|Tail1]):-
  remove_item(X,Tail,Tail1).

% Question2.2
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

% Question2.3
intersection([X|Y],M,[X|Z]) :- member(X,M), intersection(Y,M,Z).
intersection([X|Y],M,Z) :- \+ member(X,M), intersection(Y,M,Z).
intersection([],M,[]).

% Question2.4
rremove_dups([],[]).
rremove_dups([H|T],[H|Out]) :-
    not(member(H,T)),
    rremove_dups(T,Out).
rremove_dups([H|T],Out) :-
    member(H,T),
    rremove_dups(T,Out).

is_set(Lst) :-
    rremove_dups(Lst, Lst).

% Question2.5
rremove_item(_, [], []) :- !.
rremove_item(B, [A|C], D) :-
   memberchk(A, B), !,
   rremove_item(B, C, D).
rremove_item(C, [A|B], [A|D]) :-
   rremove_item(C, B, D).

uunion([X|Y],Z,W) :- member(X,Z),  uunion(Y,Z,W).
uunion([X|Y],Z,[X|W]) :- \+ member(X,Z), uunion(Y,Z,W).
uunion([],Z,Z).

iintersection([X|Y],M,[X|Z]) :- member(X,M), iintersection(Y,M,Z).
iintersection([X|Y],M,Z) :- \+ member(X,M), iintersection(Y,M,Z).
iintersection([],M,[]).

disjoint_union(X, Y, RE) :- 
	uunion(X, Y, Z), 
	iintersection(X, Y, II),
	rremove_item(II, Z, RE).

% Question2.6
remove_dups([],[]).
remove_dups([H|T],[H|Out]) :-
    not(member(H,T)),
    remove_dups(T,Out).
remove_dups([H|T],Out) :-
    member(H,T),
    remove_dups(T,Out).

% Question2.7
union([X|Y],Z,W) :- member(X,Z),  union(Y,Z,W).
union([X|Y],Z,[X|W]) :- \+ member(X,Z), union(Y,Z,W).
union([],Z,Z).