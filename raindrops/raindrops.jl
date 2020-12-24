function raindrops(number)
    ans = ""
    number/3 == number÷3 && (ans *= "Pling")
    number/5 == number÷5 && (ans *= "Plang")
    number/7 == number÷7 && (ans *= "Plong")
    return ans == "" ? "$number" : ans
end
