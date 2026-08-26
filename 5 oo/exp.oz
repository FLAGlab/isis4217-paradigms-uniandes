declare Expression Num Sum N1 N2 S Module

class Module from Expression

end 

class Expression
	meth print
		{System.showInfo "Base method does nothing"}
	end
	meth eval(R)
		{System.showInfo "Base method does nothing"}
	end
end

class Num from Expression
	attr n:0
    meth init(Val)
        n := Val
    end
	meth print
		{System.showInfo @n}
	end
	meth eval(R)
		R = @n
	end	
end

class Sum from Expression
	attr left right
    meth init(L R)
        left := L
        right := R
    end
	meth print
		{@left print} {System.showInfo "+"} {@right print}
	end
	meth eval(R)
        local LR RR in
            {@left eval(LR)}
		    {@right eval(RR)}
            R =  LR + RR
        end 
	end
end

declare R R2
N1 = {New Num init(3)}
N2 = {New Num init(5)}
S =  {New Sum init(N1 N2)}
{N1 print}
{N2 eval(R)}
{Show R}
{S eval(R2)}
{Show R2}
{S print}
{Show N2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
local NewAccount A 
fun {Account Bal Att}
   local Balance Att2 in
		Balance = {NewCell Bal}
		Att2 = {NewCell Att}
		fun {Withdraw Amount}
			if Balance >= Amount then Balance := @Balance-Amount
			else "Insufficient Funds" end
		end
		fun{Deposit Amount} 
			Balance := @Balance + Amount 
			@Balance
		end
		fun {GetAttribute} @Att2 end
		fun {Attributes} attribubtes(balance: Balance second:Att2) end
	end
	in account(att:Attributes w:Withdraw d:Deposit ga:GetAttribute) end
in
fun {NewAccount B A} {Account B A} end
A = {NewAccount 100 18}
{Show {A.att}}
{Show {A.ga}}
{Show {A.d 10}}
{Show {A.att}}
{Show 1 ==1 }
end

declare  R
proc {ExpPrint num I} 
	{Show I}
end
{ExpPrint num 5}
proc {Print sum Left Right}
	{System.showInfo Left#"+"#Right}
end
{Print sum 1 2}

fun {Eval num I}
	I
end
fun{Eval sum Left Right}
	Left + Right
end