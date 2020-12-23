function score(x, y)
    len = sqrt(abs2(x)+abs2(y))
    if len > 10
        return 0
    elseif len <= 10 && len > 5
        return 1
    elseif len <= 5 && len > 1
        return 5
    else
        return 10
    end
end
