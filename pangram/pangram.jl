"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    table = "qwertyuioplkjhgfdsazxcvbnm"
    for s in table
        if !contains(input, s) && !contains(input, uppercase(s))
            return false
        end
    end
    return true
end
