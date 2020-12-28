function collatz_steps(n)
    n <= 0 && return throw(DomainError("invalid input"))
    cnt = 0
    while n != 1
        n%2 == 0 ? (n ÷= 2) : (n = n*3 + 1)
        cnt += 1
    end
     return cnt
end
