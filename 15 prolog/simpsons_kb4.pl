parent(homer, bart).
parent(homer, hugo).
parent(homer, liza).
parent(homer, maggie).
parent(abe, homer).
parent(abe, herb). 
parent(clancy, marge).
parent(clancy, patty).
parent(clancy, selma).

parent(marge, bart).
parent(marge, hugo).
parent(marge,liza).
parent(marge,maggie).
parent(mona, homer).
parent(jacqueline, marge).
parent(jacqueline, patty).
parent(jacqueline, selma).
parent(selma, ling).

male(bart).
male(hugo).
male(homer).
male(abe).
male(clancy).
male(herb).

female(liza).
female(maggie).
female(marge).
female(ling).
female(jacqueline).
female(patty).
female(selma).
female(mona).

grandfather(X,Z) :- parent(X,Y), parent(Y,Z), male(X).
grandparent(X,Z) :- parent(X,Y), parent(Y,Z).


son(X,Y) :- parent(Y,X), male(X).

daughter(X,Y) :- parent(Y,X), female(X).