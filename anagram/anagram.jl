function detect_anagrams(subject, candidates)
    ans = []
    for str in candidates
        length(str) != length(subject) && continue
        (s = lowercase(str)) == (sub = lowercase(subject)) && continue
        for c in s
            if occursin(c, sub)
                s = replace(s, c=>"", count=1)
                sub = replace(sub, c=>"", count=1)
            end
        end
        s == "" && sub == s && push!(ans, str)
    end
    return ans
end
