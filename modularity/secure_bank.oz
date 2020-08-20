declare  
    proc {NewWrapper ?Box ?Unbox}
        Key = {NewName} in
        fun {Box X}
            {Chunk.new w(Key: X)}
        end
        fun {Unbox B}
            try B.Key catch _ then raise error(unwrap(B)) end end
        end
    end

declare
local Box Unbox
    {NewWrapper Box Unbox}
    fun {NewAccount} {Box 0} end
    fun {Deposit Account Amount}
        {Box Amount + {Unbox Account}}
    end
    fun {Withdraw Account Amount}
        if {Unbox Account} < Amount then "Insificient funds"
        else {Box {Unbox Account} - Value}
        end
    end
    A F F2 C Res
in
    Account = account(new:NewAccount deposit:Deposit withdraw: Withdraw)
    {CondSelect Account new ~1 F}
end 