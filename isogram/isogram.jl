function isisogram(s)
    # str = filter(c -> c ∉ (' ', '-'), lowercase(s))
    # return length(str) == length(Set(str))
    str = replace(lowercase(s), r"\s+|-+" => "")
    return length(str) == length(Set(collect(str)))
end
