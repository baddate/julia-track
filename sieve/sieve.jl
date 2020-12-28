function sieve(limit)
    res = Vector{Int64}()
    table = Dict{Int64, Bool}()
    for i in 2:limit
        get!(table, i, true)
    end
    for k in keys(table)
        for i in 2:limit
            i*k <= limit && haskey(table, i*k) && setindex!(table, false, i*k)
        end
    end
    for k in keys(table)
        get(table, k, -1) == true && push!(res, k)
    end
    return sort(res)
end
