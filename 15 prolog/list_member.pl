memb(X, [Y|Xs]) :- memb(X, Xs). 
memb(X, [X|Xs]).

memb2(X, [X|Xs]).
memb2(X, [Y|Xs]) :- memb2(X, Xs). 
