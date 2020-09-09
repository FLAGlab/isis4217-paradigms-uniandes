%% Slide 23
declare
class Account
    attr balance
    meth init(Val)
        balance := Val
    end

    meth getBalance(Ret)
        Ret = @balance
    end

    meth deposit(Amount)
        balance := @balance + Amount
    end
    
    meth withdraw(Amount)
        if(Amount < @balance) then
            balance := @balance + Amount
        else
            {System.showInfo "Insuficient funds "}
        end
    end
end

%--------------------------------------------

%% Slide 37

declare
class VerboseAccount from Account
    meth transfer(Amount Acc)
        balance := @balance - Amount
        {Acc deposit(Amount)}
    end
end

local A1 A2 B  B2 in
    A1 = {New Account init(100)}
    A2 = {New VerboseAccount init(150)}
    {A2 transfer(30 A1)}
    {A1 getBalance(B)}
    {Show B}
    {A2 getBalance(B2)}
    {Show B2}
end

%--------------------------------------------


%% Slide 53

class FreeAccount from VerboseAccount
    attr fee:5
    meth transfer(Amount Account)
        VerboseAccount, transfer(Amount - @fee Account)
    end
end

local A in
    
end
%--------------------------------------------