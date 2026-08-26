%% Slide 69

declare 
class Object
    attr value  attribute 

    meth init(V A)
        value := V
        attribute := A
    end

    meth changeV(V R)
        value := @attribute + V
        R = @value
    end

    meth changeA(V R)
        attribute := @value + V
        R = @attribute
    end
end

local
TraceNew O R
in 
    fun {TraceNew Class Init}
    local Obj TracedObj in
        Obj = {New Object Init}
        TracedObj = proc {$ M ?R}
            {Show entering({Label M})}
            %{Obj M}
            R = 5
            {Show exiting({Label M})}
        end
        TracedObj
    end
    end
    %{TracedObject changeV(1)}
    O = {TraceNew Object init(1 10)}
    {O changeV(1 R)}
    {Show R}
    %{O changeV(1)}
end

%-----------------------------------------


%% Slide 70
declare
class Counter
    attr val
    meth init(Value)
        val := Value
    end
    meth browse
        {Browse @val}
    end
    meth inc(Value)
        val := @val + Value
    end
end

local C1 C2 X in 
    C1 = {New Counter init(0)}
    C2 = {New Counter init(0)}
    {C1 inc(10)}
  %  {C1 toChunk(X)} 
 %   {C2 fromChunk(X)} 
end

%-----------------------------------------