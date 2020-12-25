function score(str)
    ans = 0
    for c in str
        iscontant(c) < 0 ? continue : ans += iscontant(c)
    end
    return ans
end

function iscontant(c::Char)
    lv1 = "AEIOULNRST"
    lv2 = "DG"
    lv3 = "BCMP"
    lv4 = "FHVWY"
    lv5 = "K"
    lv6 = "JX"
    lv7 = "QZ"

    occursin(uppercase(c), lv1) && return 1
    occursin(uppercase(c), lv2) && return 2
    occursin(uppercase(c), lv3) && return 3
    occursin(uppercase(c), lv4) && return 4
    occursin(uppercase(c), lv5) && return 5
    occursin(uppercase(c), lv6) && return 8
    occursin(uppercase(c), lv7) && return 10

    return -1
end

score("cabbage")