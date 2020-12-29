function secret_handshake(code)
    res = Vector{String}()
    table = Dict(
        1 => "wink",
        2 => "double blink",
        4 => "close your eyes",
        8 => "jump"
    )
    cnt = 1
    while cnt != 16
        code & cnt != 0 && push!(res, table[cnt])
        cnt <<= 1
    end
    return code & 10000 != 0 ? reverse(res) : res
end
