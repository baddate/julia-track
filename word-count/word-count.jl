"""
passed all testsets, but I don't know if it is completely correct.
"""
function wordcount(sentence)
    ans = Dict{String, Int64}()
    str = replace(lowercase(sentence), r"[^a-z0-9'\s]" => " ") |> x -> replace(x, r"(\s+'+|'+\s+|'+$)" => s" ") |> split
    for s in str
        if haskey(ans, s)
            ans[s] += 1
        else
            ans[s] = 1
        end
    end
    return ans
end
