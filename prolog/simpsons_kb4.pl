parent(homer, bart).
parent(homer, hugo).
parent(homer, liza).
parent(homer, maggie).
parent(abe, homer). 
parent(clancy, marge).

parent(marge, bart).
parent(marge, hugo).
parent(marge,liza).
parent(marge,maggie).
parent(jacqueline, marge).

male(bart).
male(hugo).
male(homer).
male(abe).
male(clancy).

female(liza).
female(maggie).
female(marge).

grandfather(X,Z) :- parent(X,Y), parent(Y,Z), male(X).
