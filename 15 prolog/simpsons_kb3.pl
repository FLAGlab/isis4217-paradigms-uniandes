male(bart).
male(hugo).
male(homer).

female(liza).
female(maggie).
female(marge).

father(homer, bart).
father(homer, hugo).
father(homer, liza).
father(homer, maggie).
father(abe, homer). 
father(clancy, marge).

mother(marge, bart).
mother(marge, hugo).
mother(marge,liza).
mother(marge,maggie).
mother(jacqueline, marge).



%parent(X, Y) :- father(X, Y).
%parent(X, Y) :- mother(X, Y).


%grandfather(X,Z) :- parent(X,Y), parent(Y,Z), male(X).
%grandparent(X,Y) :- parent(X, Z), parent(Z, Y).

%son(X, Y) :- parent(Y,X), male(X).
%son(X) :- parent(Y, X), male(X).
%daughter(X, Y) :- parent(Y,X), female(X).