%% Slide 40-45

declare fun {RecFoldR Xs F Unit}
    case Xs of nil then Unit
    [] X|Xr then {F X {RecFoldR Xs F Unit}}}
    end
end

declare fun {SeqFoldR Xs F Unit}
    case Xs of nil then Unit
    [] X|Xr then {FoldR Xr F Unit {F X Acc}}
    end
end

local SumMod3 in 
    fun {SumMod3 Xs}
        {RecFoldR Xs fun {$ X Y} X mod 3 + y end 0}
    end
    {Show {SumMod3 [93 1 5 7 3 2]}}
end

%---------------------------------------------------------

%% Slide 40-45

declare fun {RecMap Xs F}
    case Xs of nil then nil
    [] X|Xr then {F X}|{RecMap Xr F}
    end
end

declare fun {SeqMap Xs F Acc}
    case Xs of nil then {Reverse Acc}
    [] X|Xr then {SeqMap Xr F {F X} | Acc}
    end
end

local SqrtsVal in 
    fun {SqrtsVal Xs}
        {RecMap Xs fun {$ X} {Sqrt X} + X end}
    end
    {Show {SqrtsVal [9 25 144 4]}}
end

%---------------------------------------------------------

%% Slide 50-53

declare fun {RecFilter Xs Cond}
    case Xs of nil then nil
    [] X|Xr andthen {Cond X} then X|{Filter Xr Cond}
    [] X|Xr then {Filter Xr Cond}
    end
end

declare fun {SeqFilter Xs Cond Acc}
    case Xs of nil then {Reverse Acc}
    [] X|Xr andthen {Cond X} then {SeqFilter Xr Cond X | Acc}
    [] X|Xr then {SeqFilter Xr Cond Acc}
    end
end

local Odds in 
    fun {Odds Xs}
        {RecFilter Xs fun {$ X} X mod 2 == 1 end}
    end
    {Show {Odds [2 4 6 10]}}
end

%---------------------------------------------------------


%% Slide 61

declare fun {EvenFib N}
    {FoldR
        {Filter 
            {Map {fun {Range X Y} 
                if X > Y then nil
                else X|{Range X+1 Y} end 0 N}
            fun {Fib X} 
                if X <= 1 then 1 
                else {Fib X-1} {Fib X-2} end
            end}
        fun {$ X} X mod ==0 end}
    fun {$ X Y} X|Y end nil}
end

{Show {EvenFib 20}}

%---------------------------------------------------------