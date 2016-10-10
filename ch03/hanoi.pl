append([], Ys, Ys).
append([X|Xs], Ys, [X|Zs]) :- append(Xs, Ys, Zs).

hanoi(0, A, B, C, []).
hanoi(s(N), A, B, C, Moves) :-
	hanoi(N, A, C, B, Ms1),
	hanoi(N, C, B, A, Ms2),
	append(Ms1, [to(A, B)|Ms2], Moves).

t(X) :- X.