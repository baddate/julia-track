function to_rna(dna)
    trans = Dict([("T", "A"), ("G", "C"), ("C", "G"), ("A", "U")])
    rna = ""
    for i in dna
        rna = rna*get(trans, string(i), "1") # if it is an invalid input, return the default val = "1"
    end
    if occursin('1', rna) # if containing '1', throw an exception
         return throw(ErrorException("Invalid DNA Input"))
    end
    return rna
end

"a community solution using map."
function to_rna(dna)
    map(function (ch)
        if ch == 'G'
            'C'
        elseif ch == 'C'
            'G'
        elseif ch == 'T'
            'A'
        elseif ch == 'A'
            'U'
        else
            throw(ErrorException("Invalid strand"))
        end
    end, dna)
end