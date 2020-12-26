function to_roman(number)
    (number <= 0 || number > 3000) && throw(ErrorException("invalid numbers"))
    number == 3000 && return "MMM"
    ans = ""
    number, ans = calc(ans, number, 1000)
    number, ans = calc(ans, number, 900)
    number, ans = calc(ans, number, 500)
    number, ans = calc(ans, number, 400)
    number, ans = calc(ans, number, 100)
    number, ans = calc(ans, number, 90)
    number, ans = calc(ans, number, 50)
    number, ans = calc(ans, number, 40)
    number, ans = calc(ans, number, 10)
    number, ans = calc(ans, number, 9)
    number, ans = calc(ans, number, 5)
    number, ans = calc(ans, number, 4)
    number, ans = calc(ans, number, 1)
    return ans
end

function  calc(ans, number, num)
    number == 0 && return number, ans
    table = Dict(
        1 => "I",
        4 => "IV",
        5 => "V",
        9 => "IX",
        10 => "X",
        40 => "XL",
        50 => "L",
        90 => "XC",
        100 => "C",
        400 => "CD",
        500 => "D",
        900 => "CM",
        1000 => "M"
    )
    ans *= repeat(table[num], number ÷ num)
    return number - number ÷ num * num, ans
end
