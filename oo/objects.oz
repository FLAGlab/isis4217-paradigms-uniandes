
%% Slide 21
declare
class Counter
    attr val : 0
    meth init(Value)
        val := Value
    end
    meth get(R)
        R = @val
    end
    meth increment(Value)
        val := @val + Value
    end
end

local C R in
    C = {New Counter init(1)}
    {C increment(2)}
    {C get(R)}
    {Show R}
end

%% --------------------------------------------


%% Slide 31

declare
fun {NewCounter}
    Val={NewCell 0}
    proc {Inc Value} Val:=@Val+Value end
    proc {Browse2} {Show @Val} end
    in
        proc {$ M}	
            case M of inc(X) then {Inc X}	
            [] browse then {Browse2}	
            end
    end
end

local C C2 in

end

%% --------------------------------------------