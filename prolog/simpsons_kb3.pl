father(homer, bart).
father(homer, hugo).
father(homer, liza).
father(homer, maggie).
father(abe, homer). 
father(clancy, marge).

father(marge, bart).
mother(marge, hugo).
mother(marge,liza).
mother(marge,maggie).
mother(jacqueline, marge).

male(bart).
male(hugo).
male(homer).

female(liza).
female(maggie).
female(marge).

grandfather(X,Z) :- father(X,Y), father(Y,Z).
