function trinary_to_decimal(str)
    occursin(r"[A-Za-z]+|[4-9]+", str) && return 0
    res = 0
    cnt = 1
    for i in reverse(str)
        res += parse(Int, i)*cnt
        cnt *= 3
    end
    return res
end
