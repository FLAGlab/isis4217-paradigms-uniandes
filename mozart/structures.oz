%% Slide 25
local R X Y Z First Res in
   proc {First S ?R}
      R = ['1' Y]
   end
   
   R = grammar(nt: [X Y Z] t: ['1' '2' '+'] ss: X prod: [First])
   {Browse R}
end

%% Slide 37
local Square X in
   fun {Square X} X*X end
   X=5
   {Browse {Square X}}
end

declare 
fun {Square X} X*X end
{Browse {Square 5}}

%% Slide 41
for I in 1..5 do
   {Show I*2}
end


%% Slide 43
local R X Y Z Res in
   R = grammar(nt: [X Y Z] t: [1 2] ss: X)
   {CondSelect R t nil Res}
   case Res 
   of nil then {Browse 'Property doesnt exist'}
   [] [1 2] then {Browse 'The example'}
   [] F | T then {Browse F}
   end
end
