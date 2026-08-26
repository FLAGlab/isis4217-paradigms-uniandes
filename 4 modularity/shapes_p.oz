local RecBase RecSide AreaRectangle Circ AreaCircle in 
    RecBase = 3
    RecSide = 5
    
    fun {AreaRectangle Base Side}
        Base * Side
    end

    Circ = 4

    fun {AreaCircle Radius}
        2 * 3 * Radius * Radius
    end
    {Show {AreaRectangle RecBase RecSide}}
end