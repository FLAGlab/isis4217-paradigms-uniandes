%% Assignment.
%% Implement a program that, given a string, finds its maximum element.
local  Sum in
proc {Sum X Y Z}
    Z = X + Y
end
end

{Browse "Hola"}


local MaxString in
    proc {MaxString Str Max}
        case Str of
            nil then Max
            [] First | Rest then if First > Max then {MaxString Rest First} else {MaxString Rest Max} end 
        end
    end

    {MaxString "Hola" ""}
end