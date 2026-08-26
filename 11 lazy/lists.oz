declare

fun {Generate N}
    N|{Generate N+1}
end
L = {Generate 0}
{Browse L}




fun lazy {Generate2 N}
    N|{Generate2 N+1}
end
L = {Generate2 0}
{Browse L}

case L of A|B|C|_ then {Browse A+B+C} end





fun {EvenFib N}
{FoldR
{Filter 
{Map {fun lazy {Generate X} 
 X|{Generate X+1} end 0}
fun {Fib X} 
if X <= 1 then 1 
else {Fib X-1} {Fib X-2} end
end}
fun {$ X} X mod ==0 end}
fun {$ X Y} X|Y end nil}
end