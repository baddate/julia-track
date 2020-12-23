"""
basic version
"""
function rotate(shift::Int64, plain)
    table = "abcdefghijklmnopqrstuvwxyz"
    cipher = ""
    if typeof(plain) == Char
        pos = findfirst(plain, table)+shift > 26 ? findfirst(plain, table)+shift - 26 : findfirst(plain, table)+shift
        return table[pos]
    end
    for c in plain
        if findfirst(c, table) === nothing && findfirst(c, uppercase(table)) === nothing
            cipher *= c
            continue
        end
        pos = findfirst(lowercase(c), table)+shift > 26 ? findfirst(lowercase(c), table)+shift - 26 : findfirst(lowercase(c), table)+shift
        cipher *= isuppercase(c) ? uppercase(table[pos]) : table[pos]
    end
    return cipher
end

"""
Bonus A
@R5_str str
@R5_str(str)
refer: https://github.com/JuliaLang/julia/blob/788b2c77c10c2160f4794a4d4b6b81a95a90940c/base/int.jl#L622-L638
"""
macro R5_str(s)
    return rotate(5, s)
end

"""
Bonus B
@R<i>_str str
@R<i>_str(str)
note from julia docs:
====================
Core.Symbol – Method:
Create a Symbol by concatenating the string representations of the arguments together.
```julia
julia> Symbol("my", "name")
:myname
julia> Symbol("day", 4)
:day4
```
====================
Base.@eval – Macro:
https://github.com/JuliaLang/julia/blob/788b2c77c10c2160f4794a4d4b6b81a95a90940c/base/essentials.jl#L176-L181
Evaluate an expression with values interpolated into it using eval. If two arguments are provided, the first
is the module to evaluate in.
====================
"""

for idx in 0:26
    @eval begin
        macro $(Symbol("R", idx, "_str"))(s)
            return rotate($idx, s)
        end
    end
end
