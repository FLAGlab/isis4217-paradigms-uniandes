number-p(0).
number-p(s(X)) :- number-p(X).

plus(0, X, X) :- number-p(X).
plus(s(X), Y, s(Z)) :- plus(X, Y, Z).