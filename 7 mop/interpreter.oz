declare With Forms

fun {Forms Name}
    case Name 
    of newbox then ...
    [] mmclass then ...
    else {System.showInfo "Undefined function in environment"} end
end

proc {With Proc}
end