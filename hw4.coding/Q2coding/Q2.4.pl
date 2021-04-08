remove_dups([],[]).
remove_dups([H|T],[H|Out]) :-
    not(member(H,T)),
    remove_dups(T,Out).
remove_dups([H|T],Out) :-
    member(H,T),
    remove_dups(T,Out).

iset(Lst) :-
    remove_dups(Lst, Lst).