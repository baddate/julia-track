function encode(s)
    if length(s) == 0
        return s
    end
    prev = s[1]
    curr = ""
    cnt = 0
    i = 1
    ans = ""
    while i <= length(s)
        curr = s[i]
        if curr == prev
            cnt += 1
            if i == length(s)
                ans *= string(cnt)*prev
                break
            end
        else
            if cnt != 1
                ans *= string(cnt)*prev
            else
                ans *= prev
            end
            if i == length(s)
                ans *= curr
                break
            end
            cnt = 1
        end
        prev = s[i]
        i += 1
    end
    return ans
end



function decode(s)
    if length(s) == 0
        return s
    end
    i = 1
    ans = ""
    while i <= length(s)
        curr = match(r"[0-9]{0,2}[A-Za-z\s]{1}", s, i).match
        if length(curr) == 1
            ans *= string(curr)
        else
            cnt = parse(Int, curr[1:end-1])
            ans *= curr[end]^cnt
            # while (cnt -= 1) >= 0
            #     ans *= curr[end]
            # end
        end
        if (i + length(curr)) > length(s)
            break
        end
        i += length(curr)
    end
    return ans
end
