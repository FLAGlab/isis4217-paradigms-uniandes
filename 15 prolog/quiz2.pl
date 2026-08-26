looking(jack, anne).
looking(anne, george).
married(jack).
not_married(george).

married(X) :- \+not_married(X).
not_married(X) :- \+married(X). 

q(X) :- married(X), looking(X, Y), not_married(Y).
