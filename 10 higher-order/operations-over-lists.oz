local List SumSquares in

List = [1 2 4 1 7]

fun {SumSquares Xs Res}
    case Xs of nil then Res
    [] X|Xr then {SumSquares Xr Res+X*X}
   end
end

{Show {SumSquares List 0}}

end
