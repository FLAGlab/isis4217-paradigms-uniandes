declare local 
    fun {NewAccount} 0 end
    fun {Deposit Account Value} Account + Value end
    fun {Withdraw Account Value}
        if Value > Account then "Insuficient funds"
        else Account - Value
        end
    end
    A F F2 C Res
in
    Account = account(new:NewAccount deposit:Deposit withdraw: Withdraw)
    {CondSelect Account new ~1 F}
    {Show F}
    {Show {F}}
    {CondSelect Account deposit 'error' F2}
    {Show F2}
    {Show {F2 {F} 15}}



    A = {Account.new}
    {Show {Account.deposit A 70}}
    {Show A}



    C = {NewCell 20}
    {Withdraw C 15}
    {Show @C}
end

