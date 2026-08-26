
declare 
class Queue
    attr elements : nil
    meth init(Value)
        elements := Value
    end
    meth get
        {Show @elements}
    end
    meth add(Elem)
        elements := Value|@elements
    end
    meth remove()
        elements := {List.drop @elements 1}
    end
end
