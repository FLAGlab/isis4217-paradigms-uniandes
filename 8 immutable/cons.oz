%% Slide 49

declare
class Cons C
    attr a d
    meth init(A D)
        a:= A
        d:= D
    end
    meth car(X) X = @a end
    meth cdr(X) X = @d end
end

local C Car Cdr in
    C = {New Cons init(1 2)}
    {C car(Car)}
    {Show Car}
    {C cdr(Cdr)}
    {Show Cdr}
end

%----------------------------------------------

%% Slide 49

local Cons C
    fun {ConsCell X Y}
        fun {Car} X end
        fun {Cdr} Y end
        in cons(car:Car cdr:Cdr)
    end
in 
    fun {Cons X Y} {ConsCell X Y} end
    C = {Cons 1 2}
    {Show {C.car}}
    {Show {C.cdr}}
end

%----------------------------------------------