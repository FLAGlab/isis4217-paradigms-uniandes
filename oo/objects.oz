
%% Slide 21
declare
class Counter
    attr val : 0
    meth init(Value)
        val := Value
    end
    meth get
        {Show @val}
    end
    meth increment(Value)
        val := @val + Value
    end
end



%% --------------------------------------------