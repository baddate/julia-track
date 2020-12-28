function transform(input::AbstractDict)
    res = Dict()
    for key in keys(input)
        for c in get(input, key, nothing)
            push!(res, lowercase(c)=>key)
        end
    end
    return res
end
