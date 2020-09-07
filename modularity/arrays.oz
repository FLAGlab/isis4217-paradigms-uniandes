%% Slide 44

local A Sum X L in 
    A = {NewArray 1 10 &a}
    {Show A}
    Sum = {NewCell 0}
    for I in 1..10 do
        {Get A I X}
        Sum := @Sum + X
    end
    {Show @Sum}
    {Browse {Array.toRecord L A}}
end 

%----------------------------------------