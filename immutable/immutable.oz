%% Slide 6

local C in 
C = {Map [1 2 3 4 5] fun {$ X}
        {Map [a b c d e] fun {$ Y}
            X#Y
        end}
    end}
{Show C}
end

%----------------------------------------------

%% Slide 24

local X in 
    X = 42
    X = {fun {$ X} 7*X + 21 end 3}
end

%----------------------------------------------

%% Slide 28

local X Y in
    X = 3
    fun {$ X} ~X end
    Y = 4
end

%----------------------------------------------


