firstOut([], _, L, L).

firstOut([H|T], B, LC, LF) :-
    member(H, B),
    firstOut(T, B, LC, LF).

firstOut([H|T], B, LC, LF) :-
    \+member(H, B),
    firstOut(T, B, [H| LC], LF).