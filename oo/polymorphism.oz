%% Slide 41

declare CompoundFigure Figure Circle Triangle

class Figure
    meth init()
        skip
    end
	
    meth draw 
        {System.showInfo "Im a figure"} 
    end
end

class Circle
	attr x y r

    meth init(X Y R)
        x := X
        y := Y
        R := R
    end

	meth draw 
        {Show ['circle' @x @y @z]} 
    end
end

class Line
	attr x1 y1 x2 y2

    meth init(X Y W Z)
        x1 := X
        y1 := Y
        x2 := W
        y2 := Z
    end

	meth draw 
        {Show ['line' @x1 @y1 @x2 @y2]}
    end
end

class CompoundFigure
	attr figlist

    meth init() 
        figList := nil
    end

	meth draw 
        for F in @figlist do
            {F draw}
        end
    end
end

local F in
    F = {New Figure init()}
    {F draw}
end
%% --------------------------------------------