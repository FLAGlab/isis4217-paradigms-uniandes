local NewAccount
fun {Account Balance}
   fun {Withdraw Amount}
      if Balance >= Amount then {Account Balance-Amount}
      else "Insufficient Funds" end
   end
   fun {Deposit Amount} {Account Balance + Amount} end
   fun {GetBalance} Balance end 
  in account(withdraw:Withdraw deposit:Deposit balance:GetBalance) end
in
fun {NewAccount} {Account 100} end
{Show {{NewAccount}.balance}}
end