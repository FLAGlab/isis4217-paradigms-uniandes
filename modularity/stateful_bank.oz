local fun {Account Value}
    local Balance Deposit Dispatch Withdraw in
    Balance = {NewCell Value}
    fun {Withdraw Amount}
      if @Balance >= Amount then Balance := @Balance-Amount
      else "Insufficient Funds" end
    end
    fun{Deposit Amount} 
        Balance := @Balance + Amount 
        @Balance 
    end
    fun {Dispatch M}
        if M == 'Withdraw' then Withdraw else Deposit end
    end
    Dispatch
   end
   end
   in
{Show {{{Account 100} 'Deposit'} 10}}   
end