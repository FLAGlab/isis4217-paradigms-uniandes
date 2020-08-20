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
end
