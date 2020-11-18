%% Slide 1 

fun {SumSqr Lst}
    local SumSqr2 in 
        fun {SumSqr2 Lst Accum}
            case Lst of nil then Accum
            [] Car|Cdr then {SumSqr2 Cdr Accum+Car*Car}
            end
        end
        {SumSqrt2 Lst 0} 
    end
end
{Show {SumSqr [1 2 4 1 7]}}

%---------------------------------------------------------

%% Slide 3 

fun {SumModulo Lst}
    local SumMod in 
        fun {SumMod Lst Accum}
            case Lst of nil then Accum
            [] Car|Cdr then {SumMod Cdr Car mod 3 + Accum}
            end
        end
        {SumMod Lst 0} 
    end
end
{Show {SumModulo [1 2 4 1 7]}}

%---------------------------------------------------------

%% Slide 4 

declare fun {GenList Lst}
    local List in 
        fun {List Xs Res}
            case Xs of nil then Res
            [] X|Xr andthen {IsList X} then
                {List Xr {Append Res X}}
            [] X|Xr then
                {List Xr X|Res}
            end
        end
        {List Lst nil} 
    end
end
{Show {GenList [[1 [2 4]] 1 [a b c] [7]]}}

%---------------------------------------------------------

%% Slide 13

declare fun {SumSqr Lst}
    local SumSqr2 in 
        fun {ForAllAccum Xs Res}
            case Xs of nil then Res
            [] X|Xr then
                Sqr = proc {$ X} X*X end
                {ForAllAccum Xr Res+{Sqr X}}
            end
        end
        {ForAllAccum Lst 0} 
    end
end
{Show {SumSqr [1 2 4 1 7]}}

%---------------------------------------------------------

%% Slide 19

declare fun {SumSqr Lst}
    local SumSqr2 in 
        fun {ForAllAccum Xs Res F}
            case Xs of nil then Res
            [] X|Xr then
                {ForAllAccum Xr Res+{F X}}
            end
        end
        {ForAllAccum Lst 0 proc {$ X} X*X end} 
    end
end
{Show {SumSqr [1 2 4 1 7]}}

%---------------------------------------------------------

%% Slide 25

declare fun {Loop State Result Condition Operations Step}
	if {Condition State} then Result
	else S1 Res in
		S1 = {Step State}
        Res = {Operations State Result}
        {Loop S1 Res Condition Operations Step}
	end
end 	

%Slide 26

declare fun {Fact N}
	{Loop 1 
        1
        fun {$ X} X==N end 
        fun {$ X Y} X*Y end
        fun {$ X} X+1 end}
end 
{Show {Fact 5}}

%---------------------------------------------------------

%% Slide 37

declare fun {ForAllAccum Xs Res Step}
    case Xs of nil then Res
    [] X|Xr then {ForAllAccum Xr Res+{Step X} Step}
    end
end

local Square SumSquare in 
    fun {Square X} X * X end
	fun {SumSquares List}
        {ForAllAccum List 0 Square}
    end
{Show {SumSquares [1 2 3 5]}}
end

%---------------------------------------------------------