function luhn(input)
    occursin(r"[^0-9\s]+",input) && return false
    input = replace(input, " " => "")
    len = length(input)
    length(input) <= 1 && return false
    sum = 0
    i = 0
    while i < len
        if i%2 == 1
            sum += parse(Int64, input[len-i]) * 2 > 9 ? parse(Int64, input[len-i]) * 2 - 9 : parse(Int64, input[len-i]) * 2
        else
            sum += parse(Int64, input[len-i])
        end
        i += 1
    end
    return sum%10 == 0 ? true : false
end
