"Your optional docstring here"
function distance(a, b)
    if length(a) != length(b)
        return throw(ArgumentError(""))
    end
    dist = 0
    i = 1
    while i <= length(a)
        if a[i] != b[i]
            dist += 1
        end
        i += 1
    end
    return dist
end
