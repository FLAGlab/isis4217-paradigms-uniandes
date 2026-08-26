local Var Get Update C C2 X Y in
    fun {Var Val}
        attribute(val: Val)
    end

    proc {Get Cell ?Value}
        {CondSelect Cell val nil Value}
    end

    proc {Update Cell New ?R}
        {AdjoinAt Cell val New R}
    end

    C = {Var 5}
    {Get C X}
    {Show X}
    {Update C 42 C2}
    {Show C2}
    {Get C2 Y}
    {Show Y}
    {Show C = C2}
end

