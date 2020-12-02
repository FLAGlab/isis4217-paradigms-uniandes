utterance(X) :- sentence(X, []).
sentence(Start, End) :- nounphrase(Start, Rest), verbphrase(Rest, End).
nounphrase([Noun | End], End) :- noun(Noun). 
nounphrase([Article, Noun | End], End) :- article(Article), noun(Noun).
verbphrase([Verb | End], End) :- verb(Verb). 
verbphrase([Verb | Rest], End) :- verb(Verb), nounphrase(Rest, End). 

article(a).
article(the).
article(to).
%Dictionary
noun(man).
noun(dog).
noun(mary).
noun(john).
noun(book).

verb(likes).
verb(bites).
verb(gives).