list([]).
list([X|Xs]) :- list(Xs).

%append
append([], X, X).
append([H|T], X, [H|Z]) :- append(T, X, Z).


%is_list(Term)

%memberchk(Elem, +List)

%sort(+List, -Sorted)

%length(?List, ?Int)

