%% Slide 52

declare 
fun {Lookup X T Dv}
    case T of leaf(key:Y value:V) then 
        if X==Y then V else Dv end
    [] tree(key:Y value:V left:L right:R) andthen X==Y then 
        V
    [] tree(key:Y value:V left:L right:R) then
        local Res Res2 in
            Res = {Lookup X L Dv}
            Res2 = {Lookup X R Dv}
            if Res\=Dv then Res elseif Res2\=Dv then Res2 else Dv end
        end
    end
end

local T in
    T = tree(key:a value:2 
    left: tree(key:b value:7
        left: leaf(key:c value:2)
        right: tree(key:d value:6
            left: leaf(key:e value:5)
            right: leaf(key:f value:11)))
    right: tree(key:g value:5
        left:leaf(key:nil value:nil)
        right: tree(key:h value:9
            left: leaf(key:i value:4)
            right:leaf(key:nil value:nil))))
    {Show {Lookup c T ~1}}
    {Show {Lookup z T ~1}}
end

%---------------------------------------------------------

%% Slide 53

declare 
fun {Insert X V T}
    case T of leaf(key:Y value:B) then 
        if X==Y then leaf(key:Y value:V)
        elseif X<Y then tree(key:X value:V left:nil right:leaf(key:X value:V))
        else tree(key:Y value:V left:leaf(key:X value:V) right:nil) 
        end
    [] tree(key:Y value:B left:L right:R) andthen X==Y then 
        tree(key:Y value:V left:L right:R) 
    [] tree(key:Y value:B left:L right:R) andthen X<Y then
        tree(key:Y value:B left:{Insert X V L} right:R)
    [] tree(key:Y value:B left:L right:R) andthen X>Y then
        tree(key:Y value:B left:L right:{Insert X V R})
    else nil 
    end
end

local T in
    T = tree(key:a value:2 
    left: tree(key:b value:7
        left: leaf(key:c value:2)
        right: tree(key:d value:6
            left: leaf(key:e value:5)
            right: leaf(key:f value:11)))
    right: tree(key:g value:5
        left:leaf(key:nil value:nil)
        right: tree(key:h value:9
            left: leaf(key:i value:4)
            right:leaf(key:nil value:nil))))
    T2 = tree(key:a value:2 
    left: tree(key:b value:7
        left: leaf(key:c value:2)
        right: tree(key:d value:6
            left: leaf(key:e value:5)
            right: leaf(key:nil value:nil)))
    right: tree(key:g value:5
        left:leaf(key:nil value:nil)
        right: tree(key:h value:9
            left: leaf(key:i value:4)
            right:leaf(key:nil value:nil))))
    {Show {Insert f 11 T2}}
    {Show T == T2}
end


%---------------------------------------------------------
