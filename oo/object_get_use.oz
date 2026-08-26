local A Obj R in
class A 
    attr a

    meth init(Value)
        a := Value
    end

    meth foo(B ?R)
        R = @a
    end
end


    Obj = {New A init(2)}
    {Obj foo(5 R)}
    {Show R}
end