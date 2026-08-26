declare
proc {ExpPrint num I} 
      {Show I}
  end
  proc {Print sum Left Right}
      {System.showInfo Left#"+"#Right}
  end
        
  %Eval : Expression -> Int
  fun {Eval num I}
      I
  end

  fun {SumEval sum Left Right}
      Left + Right
  end
