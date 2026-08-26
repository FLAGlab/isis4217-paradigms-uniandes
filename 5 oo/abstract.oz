declare ListC SortClass

class ListC from BaseObject 
   meth append(Xs Ys $)
      case Xs
      of nil then Ys
      [] X|Xr then 
         X|(ListC , append(Xr Ys $))
      end 
   end 
   meth member(X L $)
      {Member X L}    % This defined in List.oz
   end 
   meth length(Xs $)
      case Xs
      of nil then 0
      [] _|Xr then 
        (ListC , length(Xr $)) + 1
      end 
   end 
   meth nrev(Xs ?Ys)
      case Xs
      of nil then Ys = nil
      [] X|Xr then Yr in 
         ListC , nrev(Xr Yr)
         ListC , append(Yr [X] Ys)
      end 
   end 
end

fun {SortClass Type}
   class $ from BaseObject 
      meth qsort(Xs Ys)
         case Xs
         of nil then Ys = nil
         [] P|Xr then S L in 
            {self partition(Xr P S L)}
            ListC, append({self qsort(S $)} P|{self qsort(L $)} Ys)
         end 
      end 
      meth partition(Xs P Ss Ls)
         case Xs
         of nil then Ss = nil Ls = nil
         [] X|Xr then Sr Lr in 
            if Type,less(X P $) then 
               Ss = X|Sr Lr = Ls
            else 
               Ss = Sr Ls = X|Lr
            end 
            {self partition(Xr P Sr Lr)}
         end 
      end 
   end 
end

class Int from BaseObject
   meth less(X Y $)
      X<Y
   end 
end 

class Rat from BaseObject 
   meth less(X Y $)
     '/'(P Q) = X
     '/'(R S) = Y
      in 
     P*S < Q*R
   end 
end


{Show {{New {SortClass Int} noop} qsort([1 2 5 3 4] $)}}
{Show {{New {SortClass Rat} noop}
     qsort(['/'(23 3) '/'(34 11) '/'(47 17)] $)}}