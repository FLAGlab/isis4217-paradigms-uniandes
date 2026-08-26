%% Slide 4
declare SumSqr 

fun {SumSqr Lst}
    case Lst of nil then 0
    [] Car|Cdr then Car*Car + {SumSqr Cdr}
    end
end
{Show {SumSqr [1 2 3 4 5]}}
%---------------------------------------------------------

%% Slide 5 

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
{Show {SumSqr [1 2 3 4 5]}}
%---------------------------------------------------------

fun {Membercheck X Lst}
    case Lst of nil then false
        [] Car|Cdr then 
            if Car = X then true
            else {Membercheck X Cdr}
            end
        end
    end
end

fun {Fact X}
    if X = 1 then 1 
    else X * {Fact X-1}
    end
end
