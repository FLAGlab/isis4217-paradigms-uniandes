%% Slide 43
declare Balance
Balance = {NewCell 100}

fun {Withdraw Amount}
   if @Balance >= Amount then
      Balance := @Balance - Amount
      @Balance
   else 
      "Insufficient Funds"
   end
end
{Show {Withdraw 10}}
{Show {Withdraw 10}}
{System.showInfo {Withdraw 90}}
%%-----------------------------------------


%% Slide 44
declare
fun {Withdraw Amount} 
    local Balance = {NewCell 100} in
        if @Balance >= Amount then
            Balance := @Balance - Amount
            @Balance
        else 
            "Insufficient Funds"
        end
    end
end
{Show {Withdraw 10}}
{Show {Withdraw 10}}
{System.showInfo {Withdraw 100}}
%%-----------------------------------------