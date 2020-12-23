function bob(stimulus)
    if !occursin(r"[a-z]+", stimulus) && occursin(r"[A-Z]", stimulus) && occursin(r"\?+\s*$", stimulus)
        rsp = "Calm down, I know what I'm doing!"
    elseif !occursin(r"[a-z]+", stimulus) && occursin(r"[A-Z]", stimulus)
        rsp = "Whoa, chill out!"
    elseif occursin(r"\?+\s*$", stimulus)
        rsp = "Sure."
    elseif occursin(r"\s*", stimulus) && !occursin(r"\S+", stimulus)
        rsp = "Fine. Be that way!"
    else
        rsp = "Whatever."
    end
    return rsp
end
