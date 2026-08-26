declare
fun lazy {LazyFunction1 X}
    1 + X * (3+X*(3+X))
end

B = {LazyFunction1 2}
C = {LazyFunction1 3}
A = B + C
{Browse B}
{Browse C}
{Browse A}