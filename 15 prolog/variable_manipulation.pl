times2(X, Y) :- Y is X*2.
prob(Y) :- freeze(X, times2(X,Y)), X=12.