list([]).
list([X|Xs]) :- list(Xs).

%append
append([], X, X).
append([H|T], X, [H|Z]) :- append(T, X, Z).


%is_list(Term)
is_list([]).
is_list(X) :- var(X), !, fail.
is_list([_|Xs]) :- is_list(Xs).

%memberchk(Elem, +List)
memberchk(Elem, [ Elem | Xs]).
memberchk(Elem, [ Y | Xs]) :- memberchk(Elem, Xs).

%sort(+List, -Sorted)

%length(?List, ?Int)
is_length([], 0).
is_length([X|Xs], N) :- M is N-1, 
                    is_length(Xs, M).

list_length([], 0).
list_length([X|Xs], N) :- list_length(Xs, M), N is M+1.

%reerse(?List, -List)
reverse([],[]).
reverse([X|Xs],Zs) :- reverse(Xs,Ys), append(Ys, [X], Zs).

