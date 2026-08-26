%dynamic male/1.
%dynamic father/2.

father(homer, bart).
father(homer, liza).
father(homer, maggie).
male(bart).
female(liza).

parent(X,Y) :- father(X,Y), male(Y).

parent2(X,Y) :- father(X,Y), female(Y).
parent3(X,Y) :- father(X,Y), male(Y), female(Y).
%father(homer, bart).
%father(homer, liza).
%father(homer, maggie).
%male(homer).
%male(bart).

%Implemente un programa que suma dos números
sumar(X, Y, Z) :- Z is X + Y.


%Append two lists
ancestor(X,Z) :- parent(X,Y), ancestor(Y,Z).
ancestor(X,Z) :- parent(X, Z).

parent(a, b).
parent(b,c).
parent(c,d).
parent(d,e).



is_list([]).
is_list([X | T]) :- is_list(T).

memb(X, [X|Z]).
memb(X, [Y|Z]) :- memb(X, Z).


%fact(X, Res)
%facotrial 5 = 5*4*3*2*1
factorial(0,1).
factorial(1,1).
factorial(X, Y) :- X> 0, factorial(X-1, Y*X).

