local AnObject Obj Res FuncRes in
class AnObject 
    attr attribute

    meth init(Value)
        attribute := Value
    end

    meth getter(Param ?R) % Regular method (works as a procedure)
        R = @attribute
    end

    meth cleanGetter($) %Functional method (returns as a function)
        @attribute
    end
end


    Obj = {New AnObject init(2)}
    {Obj getter(5 Res)}
    {Show Res}
    FuncRes = {Obj cleanGetter($)}
    {Show FuncRes}
end