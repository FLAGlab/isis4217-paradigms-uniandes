%% Slide 8

local X in 
    X = 5
    {Show X}
end

local X Y Sum Division in
    X = 5
    Y = 20
    fun {Sum X Y}
        X + Y
    end
    fun {Division X Y}
        X div Y
    end 
    {Show {Sum {Division Y 2} X}}
end

%%-----------------------------------------


%%Slide 9

declare 
fun {Fact N Accum}
    case N of 
        1 then Accum
        else {Fact N-1 Accum*N}
    end
end
{Show {Fact 5 1}}

%%-----------------------------------------


%% Slide 26

declare X
X = 8
X = 3

%%-----------------------------------------


%% Slide 27

declare C X
{NewCell 5 C}
{Exchange C 5 3}
{Show X}
{Show {Access C}}

%%-----------------------------------------