male(brian).
male(kevin).
male(zhane).

get_male :-
	male(X), format('~w ~s male ~n', [X, "is the"]).