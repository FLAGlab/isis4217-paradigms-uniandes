local Var Get Update C C2 in
    fun {Var Val}
        attribute(val: Val)
    end

    proc {Get Cell ?Value}
        {CondSelect Cell val nil Value}
    end

    proc {Update Cell New ?R}
        {AdjoinAt Cell val New R}
    end
end

