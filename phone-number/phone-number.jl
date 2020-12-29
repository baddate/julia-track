function clean(phone_number)
    pn = replace(phone_number, r"[^0-9]+" => s"")
    (length(pn) > 11 || length(pn) < 10) && return nothing
    length(pn) == 10 && (parse(Int64, pn[1]) ∉ 2:9 || parse(Int64, pn[4]) ∉ 2:9) && return nothing
    length(pn) == 11 && (parse(Int64, pn[1]) != 1 || parse(Int64, pn[2]) ∉ 2:9 || parse(Int64, pn[5]) ∉ 2:9) && return nothing
    return length(pn) == 11 ? pn[2:end] : pn
end
