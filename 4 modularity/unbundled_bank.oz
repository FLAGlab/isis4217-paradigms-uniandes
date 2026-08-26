local NewAccount fun {Account Value}
    Balance = {NewCell Value}
fun {Withdraw Amount}
      if @Balance >= Amount then Balance := @Balance-Amount
      else "Insufficient Funds" end
   end
   fun {Deposit Amount} Balance := @Balance + Amount end
   fun {GetBalance} Balance end 
  in account(withdraw:Withdraw deposit:Deposit balance:GetBalance) end
in
fun {NewAccount} {Account 100} end
    {Show @{{NewAccount}.balance}}
end