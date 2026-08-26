%% Boxes

declare 
    proc {Newbox Val ?Box}
        local MB Key = {NewName} in
        MB = {Chunk.new w(Key: {NewCell Val})}
        fun {Openbox B}
            local C B in
            try C = B.Key
                @C
            catch _ then raise error(unwrap(B)) end end
            end
        end
        fun {Setbox B Val}
            {Openbox B} := Val
            B
        end
        end
        Box = box(openBox: Openbox setBox: Setbox)
    end

local B in
    {Newbox secret B}
    {Show {B.openBox}}
end
