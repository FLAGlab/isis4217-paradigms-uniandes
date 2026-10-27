brother(hugo,paco,luis).
brother(bart,hugo).

brother(X,Y) :- brother(Y,X).

brother(X,Y,Z) :- brother(X,Z), brother(X,Y).
brother(X,Z) :-  brother(X,Y), brother(Y,Z).


