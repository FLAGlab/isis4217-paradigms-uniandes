%% Slide 25
local R X Y Z First Res in
   proc {First S ?R}
      R = ['1' Y]
   end
   
   R = grammar(nt: [X Y Z] t: ['1' '2' '+'] ss: X prod: [First])
   {Browse R}
end
%----------------------------------------


%% Slide 41
for I in 1..5 do
   {Show I*2}
end
%----------------------------------------


%% Slide 43
local R X Y Z Res in
   R = grammar(nt: [X Y Z] t: [1 2] ss: X)
   {CondSelect R t nil Res}
   case Res 
   of nil then {Browse 'Property doesnt exist'}
   [] [1 2] then {Browse 'The example'}
   [] H | T then {Browse H}
   end
end
