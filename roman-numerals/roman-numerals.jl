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
        1"I",
        4"IV",
        5"V",
        9"IX",
        10"X",
        40"XL",
        50"L",
        90"XC",
        100"C",
        400"CD",
        500"D",
        900"CM",
        1000"M"
    )
    ans *= repeat(table[num], number ÷ num)
    return number - number ÷ num * num, ans
end

"""
roman numeral to number
"""

function to_number(roman)
    length(roman) == 0 && return throw(ErrorException("invalid input roman numeral."))
    table = Dict(
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000
    )
    length(roman) == 1 && return table[roman[1]]
    ans = 0
    prev = roman[begin]
    for curr in roman[2:end]
        if table[curr] < table[prev]
            ans += table[prev]
        elseif table[prev] == table[curr]
            ans += table[prev]
        else
            ans -= table[prev]
        end
        prev = curr
    end
    ans += table[roman[end]]
    return ans
end
