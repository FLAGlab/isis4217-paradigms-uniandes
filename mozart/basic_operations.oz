%% Slide 9

{Browse 4}

%----------------------------------------


%% Slide 21

{Browse foo}
{Browse nil}
{Browse 'Nicolas'}

%----------------------------------------


%% Slide 22

{Show 3 + 2}
{Show 3.1 + 2.2}
{Show 3 + 2.2}
{Show 3.1 + 2}
{Show 3.1 + &a}
{Show &c + &a}

%----------------------------------------


%% Slide 23

declare Sum Z in
proc {Sum X Y ?R}
  R = X + Y
end

Z={Sum 1 3}
{Show Z}

%----------------------------------------


%% Slide 24

{Show {Not true}}

{Show {Or true 4 div 0}}
{Show true orelse 4 div 0}


{Show {And true false}}
{Show true andthen false}

{Show {And false 4 div 0}}
{Show false andthen 4 div 0}
{Show 4 div 2}

%----------------------------------------


%% Slide 37

local Square X in
   fun {Square X} X*X end
   X=5
   {Browse {Square X}}
end

declare 
fun {Square X} X*X end
{Browse {Square 5}}

%----------------------------------------

