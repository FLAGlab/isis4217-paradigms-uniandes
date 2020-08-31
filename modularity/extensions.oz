local
fun {Account Balance}
   fun {Withdraw Amount} Balance - Amount end
   fun {Deposit Amount} Amount + Balance end
  in account(w:Withdraw d:Deposit) end
in
fun {NewAccount} {Account 100} end
end