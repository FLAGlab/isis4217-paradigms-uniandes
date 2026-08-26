declare Eval Apply Read Env

%% Environment has to be a cell to be able to change it
Env = {NewCell env()}

fun {Eval Exp}
    if {IsNumber Exp} then Exp else 
    case Exp of H|T then 
        case H of
        'if' then  {Eval {Nth T 2} {Apply {Nth T 1}}}
        [] 'thenelse' if {Nth T 2} == true {Apply {Eval {Nth {Nth T 1} 1}} else {Apply {Eval {Nth {Nth T 1} 2}} end 
        [] 'val' then {Show @Env}
                    Env := {AdjoinList @Env [{Nth T 1}#{Parse {Nth T 2}}]}
                    {Show @Env}
                    Env
        [] ''
        else {Apply H [{Apply {Eval {Nth T 1}}} {Apply {Eval {Nth T 2}}]}
        end
    [] nil then "Insufficient arguments"
    else "Wrong expression" end
    end
end

fun {Apply Op TermList}
 case Op of '+' then {Nth TermList 1} + {Nth TermList 2}
 [] '-' then {List.Nth TermList 1} + {List.Nth TermList 2}
 end
end

%%Parser test
%{+ 4 {- 5 2}}
% [ifthenelse Cond Exp Exp2]
% [if Cond [thenelse Exp Exp2]]
{System.showInfo {Parse ['+' 4 ['-' 5 2]]}}
local X = {Parse ['val' x ['-' 5 2]]} in
{Show X}
%{System.showInfo X}
end