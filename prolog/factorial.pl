fact(0,1).
fact(N,Fact) :- M is N-1, 
            fact(M,P), 
            Fact is N*P.


%%Option 2
%fact(0,1) :- !.
%fact(N,Fact) :- M is N-1, 
%            fact(M,P), 
%            Fact is N*P.



%%Option 3
%fact(0,1).
%fact(N,Fact) :- N \= 0,
%            M is N-1,
%            fact(M,P), 
%            Fact is N*P.
