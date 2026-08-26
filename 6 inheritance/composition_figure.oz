%% Slide 66
declare
class Figure
    attr color

    meth init(C)
        color := C
    end

    meth getColor
        {Show @color}
    end

    meth area
        {self getColor}
    end
end

class CompoundFigure
    attr figureList

    meth init(L) figureList := L end

    meth draw
        for F in @figureList do
            {F area}
        end
    end
end

local F1 F2 C in
    F1 = {New Figure init(red)}
    F2 = {New Figure init(blue)}
    C = {New CompoundFigure init([F1 F2])}
    {C draw}
end