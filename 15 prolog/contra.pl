male(X) :- not(female(X)).
female(bart).
female(X) :- not(male(X)).

male(bart).

