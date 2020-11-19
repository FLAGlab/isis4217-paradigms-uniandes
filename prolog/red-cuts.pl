%f(X, Y) :- X < 3, !, Y=0.	% rule 1
%f(X, Y) :- X < 6, !, Y=2.	% rule 2	
%f(X, 4).                    % rule3

f(X, Y) :- X < 3, Y=0.	% rule 1
f(X, Y) :- X < 6, Y=2.	% rule 2	
f(X, 4).                % rule3