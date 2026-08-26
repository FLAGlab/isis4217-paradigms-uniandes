tree(Op,X,Y) :-	arithmeticOp(Op),
				treeOrLeaf(X), treeOrLeaf(Y).

arithmeticOp(Op) :- member(Op,['*','+','-','*','/']).
treeOrLeaf(X) :- X = tree(_,_,_), call(X).
treeOrLeaf(leaf(L)) :- member(L,[0,1,2,3,4,5,6,7,8,9]).