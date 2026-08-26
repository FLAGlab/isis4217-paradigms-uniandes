father(homer, bart).
father(homer, liza).
father(homer, maggie).
father(abe, homer). 
father(marge, bart).


female(liza).
female(maggie).
female(marge).

grandfather(X,Y) :- father(X,Z), father(Z,Y).