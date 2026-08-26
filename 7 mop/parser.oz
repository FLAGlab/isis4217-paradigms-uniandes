declare Parse Read Env

%% Environment has to be a cell to be able to change it
Env = {NewCell env()}

fun {Parse Exp}
    if {IsNumber Exp} then Exp else 
    case Exp of H|T then 
        case H of '+' then {Parse {Nth T 1}} + {Parse {Nth T 2}}
        [] '-' then {Parse {Nth T 1}} - {Parse {Nth T 2}}
        [] 'val' then {Show @Env}
                    Env := {AdjoinList @Env [{Nth T 1}#{Parse {Nth T 2}}]}
                    {Show @Env}
                    Env
        else "Unrecognized operation" end
    [] nil then "Insufficient arguments"
    else "Wrong expression" end
    end
end


%%Parser test
{System.showInfo {Parse ['+' 4 ['-' 5 2]]}}
local X = {Parse ['val' x ['-' 5 2]]} in
{Show X}
%{System.showInfo X}
end