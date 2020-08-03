%% Slide 9

{Browse 4}

%% Slide 21
{Browse foo}
{Browse nil}
{Browse 'Nicolas'}

%% Slide 22
{Show 3 + 2}
{Show 3.1 + 2.2}
{Show 3 + 2.2}
{Show 3.1 + 2}
{Show 3.1 + &a}
{Show &c + &a}


%% Slide 23

declare Plus Z in
proc {Plus X Y ?R}
  R =  X + Y
end

Z= {Plus 1 3}
{Show Z}

%% Slide 24

{Show {And false 4 div 0}}
{Show false andthen 4 div 0}
{Show 4 div 2}

