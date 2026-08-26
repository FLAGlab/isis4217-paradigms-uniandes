let square x = x*x;;

let rec power (x, n) =
  if n = 0 then [%metaocam.bracket 1] (* if n = 0 then .< 1 >. *)
  else if n mod 2 = 0 then [%metaocam.bracket square [%metaocam.escape power(x, n/2) ]] (* else if n mod 2 = 0 then .<square .~(power(x, n/2)) >. *)
  else [%metaocam.bracket[%metaocam.escape x] * [%metaocam.escape power (n-1, x)]];;

let power8(x) = [%metaocam.bracket fun x -> [%metaocam.escape power (8, [%metaocam.bracket x]) ]];;

print_int(power8(2));;