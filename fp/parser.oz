declare ReadFile

fun {ReadFile }
    local File Program in
        File = {New Open.file init(name:'program.txt' flags:[read])} 
        {File read(Program size:all)}
        {Show Program}
    end
end