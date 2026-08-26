declare Parse ParseOperation FindEnd Env MethodLookup

%% Environment definition
% The environment is defined as a mutable list of entities (mainly object, but there can be variable-value pairs as well)
Env = {NewCell nil}

%% Internal object representation 
%Objects are represented internally as records (all objects are prototype records) with a name, its attributes and its methods
%Both the attributes and the methods are mutable lists
%% prototype(name: {Nth T 1} values: {NewCell nil} operations: {NewCell nil})

% Parser for the prototype object system.
fun {Parse Exp Env}
    case Exp of H|T then 
        case H of prototype then    %Parse the prototype definition, create the structure and continue parsing recursively
            local O in 
                O = prototype(name: {Nth T 1} values: {NewCell nil} operations: {NewCell nil})
                Env := O | @Env
                {Parse {List.drop T 1} Env}
            end
        [] value then   %Parse values, in our system values always have a name and a value
            local Proto V in
                Proto = {Nth @Env 1}
                V = Proto.values
                V := [{Nth T 1} {Nth T 2}]|@V
                {Parse {List.drop T 2} Env}
            end
        [] operation then %Parse operations, Operations consist of a name and an implementation and are delimited by ends
            local List Rest in 
                {FindEnd T List Rest}
                {ParseOperation  List Env}
                {Parse Rest Env}
            end
        [] call then   %Parse method calls (not part of the object structure definition, it simply shows the implementation of a method)
            local Ans in
                Ans = {MethodLookup T Env}
                Ans
            end
        else H end
    [] nil then {System.showInfo "Finished parsing the expression"}
                Env
    else "Wrong expression" end
end

%Auxiliary function to find the end of methods
proc {FindEnd L ?Take ?Drop} 
    local Comp in 
        Comp = proc {$ X ?R} 
            if X == operation then R = false else R = true end 
        end
        {List.takeDropWhile L Comp Take Drop}
    end
end

%Auxiliary function to parse operations
proc {ParseOperation List Env}
    local Proto V in
        Proto = {Nth @Env 1}
        V = Proto.operations
        local Imp in
            Imp = {NewCell nil}
            for Elem in List do
                Imp := {Append @Imp [Elem]}
            end
            V := @Imp|@V
        end
    end
end

%Auxiliary function to call methods (look up of a method and )
proc {MethodLookup List Env ?Ans}
    for Entity in  @Env do
        case Entity of nil then Ans = "No such object"
        [] prototype(name: _ values: _ operations: Ops) then
            for Op in @Ops do
                if({Nth List 2} == {Nth Op 1}) then
                    Ans = {Nth Op 2}
                end
            end
        else Ans = "Object doesn't exist" end
    end
end


% Proof of concept Test
local X R in 
    %Objects are defined as a prototype following its attributes as values and methods as operations. Method implementations are a single atom
    X = {Parse [prototype account value balance 10 operation  'GetBalance()' 'account.balance' 'end' operation 'SetBalance(NewBalance)' 'account.balance := NewBalnce' 'end'] Env} 
    {Show X}
    R = {Parse [call 'account' 'GetBalance()'] Env}
    {Show R}
end
