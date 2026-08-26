let rec power (x, n) =
  match n with
   0 -> 1 
| n -> x * (power (x, n-1));;

print_int(power(2, 8));;