"Square the sum of the first `n` positive integers"
function square_of_sum(n)
    sum = 0
    for i in 1:n
        sum += i
    end
    return pow(sum, 2)
end

"Sum the squares of the first `n` positive integers"
function sum_of_squares(n)
    sum = 0
    for i in 1:n
        sum += pow(i, 2)
    end
    return sum
end

"Subtract the sum of squares from square of the sum of the first `n` positive ints"
function difference(n)
    return square_of_sum(n) - sum_of_squares(n)
end

"""
pow(x, n) function

"""
function pow(x, n)
    ans = 1
    while n > 0
        n&1 == 1 ? ans *= x : x *= x
        n >>= 1
    end
    return ans
end
